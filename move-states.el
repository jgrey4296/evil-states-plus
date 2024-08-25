;;; move-states.el -*- lexical-binding: t; no-byte-compile: t; -*-
;;-- Header
;; File Commentary:
;;
;;
;; See footer for licenses/metadata/notes as applicable
;;-- end Header
(require 'evil-core)
(require 'smartparens)

;;-- vars
(defvar sectionM-move-target 'word "what section type to move by")
(defvar sectionM-end-target 'begin "move to beginning or end")
(defvar sectionM-move-size 1)

(defvar sectionM-move-switch 'paragraph)

(defvar bufferM-origin-buffer nil)

;;-- end vars

;;-- utils
(evil-define-state -quitter
  "A utility state to always quit the state with Q"
  :tag "<Q">
  :message "-- Quitter --"
  )

(defmacro move-wrap! (state &rest body)
  " macro for wrapping a set of instructions in a return to normal state,
and setting the resulting buffer to `state`.

ie: allowing a 'window move state' that follows the cursor
"
  `(lambda ()
     (interactive)
     (evil-normal-state)
     ,@body
     (with-current-buffer (current-buffer)
       (,(intern (format "evil-%s-state" (cadr state))))
       )
     )
  )

(defun bufferM-origin ()
  "Return to the original buffer the bufferM state was entered from"
  (interactive)
  (when bufferM-origin-buffer
    (switch-to-buffer bufferM-origin-buffer nil t)
    (setq bufferM-origin-buffer nil)
    )
  )

(defun sectionM-set-move-target ()
  "an ivy to choose how you want to move."
  (interactive)
  (ivy-read "Select movement type:"
            ;; TODO: maybe expand this to be a var, and register calls to match?
            ;; TODO: heading, carousel, workspace, zimmerframe, file in dir, todo, error, motion
            '(word sentence paragraph section comment)
            :require-match t
            :action #'(lambda (x) (setq sectionM-move-target (intern x)
                                        sectionM-move-size 1))
            )
  (message "State Movement: %s" sectionM-move-target)
  )

(defun sectionM-end-toggle ()
  "a toggle between moving by beginning, or end, of whatever is targetted"
  (interactive)
  (setq sectionM-end-target (pcase sectionM-end-target
                              ('begin
                               (message "State will move by word ends")
                               'end)
                              (_
                               (message "State will move by word beginnings")
                               'begin)
                              ))
  )

(defun sectionM-forward (&optional count)
  "Move forward according to the state vars"
  (interactive "p")
  (when (< 1 count) (setq sectionM-move-size count))
  (message "Moving by: %s : %s : %s : %s" sectionM-move-target sectionM-end-target sectionM-move-size count)
  (pcase (cons sectionM-move-target sectionM-end-target)
    ('(word . begin)     (evil-forward-WORD-begin       sectionM-move-size))
    ('(word . end)       (evil-forward-WORD-end         sectionM-move-size))
    (`(sentence . ,_)    (evil-forward-sentence-begin   sectionM-move-size))
    (`(paragraph . ,_)   (evil-forward-paragraph        sectionM-move-size))
    (`(section . begin)  (evil-forward-section-begin    sectionM-move-size))
    (`(section . end)    (evil-forward-section-end      sectionM-move-size))
    (`(comment . ,_)     (+evil/next-comment sectionM-move-size))
    (x                   (error "unrecognised move target: %s" x))
    )
  )

(defun sectionM-backward (&optional count)
  "move backward according to the state vars"
  (interactive "p")
  (when (< 1 count) (setq sectionM-move-size count))
  (pcase (cons sectionM-move-target sectionM-end-target)
    ('(word . begin)    (evil-backward-WORD-begin       sectionM-move-size))
    ('(word . end)      (evil-backward-WORD-end         sectionM-move-size))
    (`(sentence . ,_)   (evil-backward-sentence-begin   sectionM-move-size))
    (`(paragraph . ,_)  (evil-backward-paragraph        sectionM-move-size))
    (`(section . begin) (evil-backward-section-begin    sectionM-move-size))
    (`(section . end)   (evil-backward-section-end      sectionM-move-size))
    (`(comment . ,_)    (+evil/previous-comment         sectionM-move-size))
    (x                  (error "unrecognised move target" x))
    )
  )

(evil-define-motion line-bound-bounce-motion (count)
  "Augment evil-goto-column to go to end of line if at beginning"
  (cond (count
         (move-to-column count))
        ((< (point) (line-end-position))
         (end-of-line))
        (t
         (move-to-column 0))
        )
  )

(defun sectionM-remind ()
  (interactive)
  (message "Section Move State: TAB to set target. e to toggle end.")
  )

;;-- end utils

(evil-define-state bufferM
  "A Buffer movement state"
  :tag "<Buf>"
  :message "-- Buffers --"
  :suppress-keymap t
  :enable (-quitter)
  (unless bufferM-origin-buffer
    (setq bufferM-origin-buffer (current-buffer))
    )
  )

(evil-define-state windowM
  "A Window movement state"
  :tag "<Wind>"
  :message "-- Windows --"
  :suppress-keymap t
  :enable (-quitter)
  )

(evil-define-state pageM
  "A page move state"
  :tag "<Page>"
  :message "-- Page --"
  :enable (-quitter)
  :suppress-keymap t
  )

(evil-define-state sectionM
  "A Word move state"
  :tag "<Section>"
  :message "-- Section --"
  :suppress-keymap t
  :enable (-quitter)
  (setq sectionM-end-target 'begin)
  )

(evil-define-state markM
  "A Mark move state"
  :tag "<Marks>"
  :message "-- Marks --"
  :suppress-keymap t
  :enable (-quitter)
  )

(evil-define-state searchM
  "A Search move state"
  :tag "<Search>"
  :message "-- Search --"
  :suppress-keymap t
  :enable (-quitter)
  )

(evil-define-state overlayM
  "An overlay move state"
  :tag "<Overlay>"
  :message "-- Overlay --"
  :suppress-keymap t
  :enable (-quitter)
  )

(evil-define-state parenM
  "Paren State - for moving around s-expressions"
  :tag "<P>"
  :message "-- Paren --"
  :enable (-quitter)
 )

;;-- bindings
(evil-define-key* '-quitter 'global
  (kbd "SPC")   'doom/leader
  "q"            #'evil-normal-state
  "1"            #'digit-argument
  "2"            #'digit-argument
  "3"            #'digit-argument
  "4"            #'digit-argument
  "5"            #'digit-argument
  "6"            #'digit-argument
  "7"            #'digit-argument
  "8"            #'digit-argument
  "9"            #'digit-argument
  "0"            #'digit-argument
  )
(evil-define-key* 'bufferM 'global
  "Q" #'bufferM-origin
  "h" (move-wrap! 'bufferM (let ((switch-to-prev-buffer-skip 'visible)) (switch-to-next-buffer)))
  "l" (move-wrap! 'bufferM (let ((switch-to-prev-buffer-skip 'visible)) (switch-to-prev-buffer)))
  "u" (move-wrap! 'bufferM (let ((switch-to-prev-buffer-skip #'(lambda (wind buff bury)
                                                                 (not (buffer-modified-p buff)))))
                             (bufferp (switch-to-next-buffer))))
  (kbd "RET") #'+jg-ibuffer-ivy-buffer
  )
(evil-define-key* 'pageM 'global
  ";" #'goto-last-change
  "[" #'scroll-right
  "]" #'scroll-left
  "a" #'evil-avy-goto-line
  "c" #'avy-goto-char
  "d" #'evil-window-middle
  "f" #'evil-window-top
  "h" #'beginning-of-buffer
  "j" #'evil-scroll-page-down
  "k" #'evil-scroll-page-up
  "l" #'end-of-buffer
  "m" #'evil-middle-of-visual-line
  "s" #'evil-window-bottom
  "z" #'evil-scroll-line-to-center
  )
(evil-define-key* 'windowM 'global
  "j"  (move-wrap! 'windowM (evil-window-down 1))
  "k"  (move-wrap! 'windowM (evil-window-up 1))
  "l"  (move-wrap! 'windowM (evil-window-right 1))
  "h"  (move-wrap! 'windowM (evil-window-left 1))
  "b"  #'balance-windows
  "t"  #'+jg-windows-3-col-centered
  )
(evil-define-key* 'sectionM 'global
  (kbd "TAB") #'sectionM-set-move-target
  "e"         #'sectionM-end-toggle
  "h"         #'sectionM-backward
  "l"         #'sectionM-forward
  "d"         #'evil-quickscope-find-char-backward
  "f"         #'evil-quickscope-find-char
  "i"         #'evil-append
  "\\"        #'line-bound-bounce-motion
  "?"         #'sectionM-remind
  )
(evil-define-key* 'markM 'global
  "l" #'evil-show-marks
  "j" #'counsel-evil-marks
  "p" #'avy-pop-mark
  ;; :desc "Push Mark"             "B" (cmd! (avy-push-mark))
  ;; goto mark
  )
(evil-define-key* 'searchM 'global
  "a" #'evil-ex-search-backward
  "s" #'counsel-grep-or-swiper
  "f" #'evil-ex-search-forward
  "h" #'evil-ex-search-previous
  "l" #'evil-ex-search-next
  )
(evil-define-key* 'overlayM 'global
  "H" #'sp-beginning-of-sexp
  "h" #'sp-backward-up-sexp
  ;; forward overlay
  ;; backward overlay
  ;; delete overlay
  ;; delete all overlays

  )
(evil-define-key* 'parenM 'global
  "H" #'sp-beginning-of-sexp
  "h" #'sp-backward-up-sexp
  "l" #'sp-down-sexp
  "L" #'sp-end-of-sexp
  "k" #'sp-backward-sexp
  "K" #'sp-up-sexp
  "j" #'sp-next-sexp
  "p" #'sp-beginning-of-next-sexp
  "u" #'sp-beginning-of-previous-sexp
  "o" #'sp-end-of-next-sexp
  "i" #'sp-end-of-previous-sexp

  ;; TODO maybe?
  ;; "a" #'sp-previous-sexp
  ;; "f" #'sp-next-sexp
  ;; "x" #'sp-backward-parallel-sexp
  ;; "x" #'sp-backward-sexp
  ;; "x" #'sp-forward-parallel-sexp
  ;; "x" #'sp-forward-sexp
  )

;;-- end bindings

(provide 'move-states)

;;-- Footer
;; Copyright (C) 2024 john
;;
;; Author:     john <https://github.com/jgrey4296>
;; Maintainer: john <john@john-UM700>
;; Created:    July 20, 2024
;; Modified:   July 20, 2024
;; Version: 0.0.1
;; Keywords:
;; Homepage: https://github.com/jgrey4296
;; Package-Requires: ((emacs "24.3"))
;; Package written on: ((emacs 29.1))
;;
;; This file is not part of GNU Emacs.
;;
;;-- end Footer
;;; move-states.el ends here
