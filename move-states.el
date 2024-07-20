;;; move-states.el -*- lexical-binding: t; no-byte-compile: t; -*-
;;-- Header
;; File Commentary:
;;
;;
;; See footer for licenses/metadata/notes as applicable
;;-- end Header

;; TODO: an ivy state-selector
;; register state?

(evil-define-state buffer
  :tag "<Buf>"
  :message "-- Buffers --"
  ;; q - quit
  ;; next buffer
  ;; prev buffer
  ;; next unsaved buffer
  )

(evil-define-state page
  :tag "<Page>"
  :message "-- Page --"

  ;; q - quit
  ;; :desc "Last Change"           ";"   #'goto-last-change
  ;; :desc "Jump to Char"          "."   #'avy-goto-char
  ;; :desc "Line"                  "l"   #'evil-avy-goto-line
  ;; :desc "Middle of Line"        "M"   #'evil-middle-of-visual-line
  ;; :desc "Goto First Line"       "f"   #'evil-goto-first-line
  ;; :desc "Goto Last Line"        "F"   #'evil-goto-line
  ;; :desc "Buffer Start"          "<"   #'beginning-of-buffer
  ;; :desc "Buffer End"            ">"   #'end-of-buffer
  ;; evil-scroll-page-down
  ;; evil-scroll-page-up
  ;; :desc "Scroll Left"            "<left>"  #'evil-scroll-left
  ;; :desc "Scroll Right"           "<right>" #'evil-scroll-right
  ;; evil-window-bottom
  ;; evil-window-top
  ;; evil-window-middle

  )

(evil-define-state words
  :tag "<Word>"
  :message "-- Words --"
  ;; q - quit
  ;; forward,backward word,WORD
  ;; start/end of word
  )

(evil-define-state marks
  :tag "<Marks>"
  :message "-- Marks --"
  ;; q - quit
  ;; :desc "Jump to mark"          "m"   #'evil-show-marks
  ;; :desc "Pop Mark"              "b"   #'avy-pop-mark
  ;; :desc "Push Mark"             "B" (cmd! (avy-push-mark))
  ;; goto mark
  )

(evil-define-state search
  :tag "<Search>"
  :message "-- Search --"
  ;; q - quit
  )

(evil-define-state section
  :tag "<Section>"
  :message "-- Section --"

  ;; q - quit
  ;; forward section
  ;; backward section
  ;; forward/backward  line/paragraph/def/comment/error
  )

(evil-define-state overlay
  :tag "<Overlay>"
  :message "-- Overlay --"
  ;; q - quit
  ;; forward overlay
  ;; backward overlay
  ;; delete overlay
  ;; delete all overlays

  )

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
