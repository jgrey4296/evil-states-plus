;;; paren-state.el -*- lexical-binding: t; no-byte-compile: t; -*-

(require 'evil-core)
(require 'smartparens)

;; TODO an overlay to help see where to go
(defvar paren-state-overlay (make-overlay (point-min) (point-min)))
(defvar evil-paren-state-map (make-keymap))
(suppress-keymap evil-paren-state-map)

(evil-define-key nil evil-paren-state-map
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
  "q" #'evil-normal-state

  ;; TODO maybe
  ;; "a" #'sp-previous-sexp
  ;; "f" #'sp-next-sexp
  ;; "x" #'sp-backward-parallel-sexp
  ;; "x" #'sp-backward-sexp
  ;; "x" #'sp-forward-parallel-sexp
  ;; "x" #'sp-forward-sexp
  )

;;;###autoload (autoload 'evil-paren-state "evil-states-plus/paren-state" nil t)
(evil-define-state paren
  "Paren State - for moving around s-expressions"
  :tag "<P>"
  :message "-- Paren --"
  ;; Disable reindentation:
  (setq-local sp-navigate-reindent-after-up nil
              sp-navigate-reindent-after-up-in-string nil
              )
  )

(provide 'paren-state)
