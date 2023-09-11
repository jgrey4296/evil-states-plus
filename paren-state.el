;;; paren-state.el -*- lexical-binding: t; no-byte-compile: t; -*-

(require 'evil-core)
(require 'smartparens)

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
  )

;; (evil-define-key 'paren "a" #'sp-previous-sexp)
;; (evil-define-key 'paren "f" #'sp-next-sexp)
;; (evil-define-key 'paren "x" #'sp-backward-parallel-sexp)
;; (evil-define-key 'paren "x" #'sp-backward-sexp)
;; (evil-define-key 'paren "x" #'sp-forward-parallel-sexp)
;; (evil-define-key 'paren "x" #'sp-forward-sexp)

;;;###autoload (autoload 'evil-paren-state "evil-states-plus/paren-state" nil t)
(evil-define-state paren
  "Paren State"
  :tag "<P>"
  :message "-- Paren --"
  ;; :enable (motion)
  ;; :input-method t
  ;; :suppress-keymap t
  (setq-local sp-navigate-reindent-after-up nil
              sp-navigate-reindent-after-up-in-string nil
              )
  )

(provide 'paren-state)
