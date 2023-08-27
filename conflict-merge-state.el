;;; -*- lexical-binding: t; -*-
(require 'smerge-mode)

(defvar evil-conflict-merge-state-map (make-keymap))
(evil-make-intercept-map evil-conflict-merge-state-map)

;;;###autoload (autoload 'evil-conflict-merge-state "ide/version-control/autoload/conflict-merge-state" nil t)
 (evil-define-state conflict-merge
    "Merge Conflict State."
    :tag "<MC>"
    :message "-- MERGE CONFLICT --"
    :suppress-keymap t
    )

(define-key evil-conflict-merge-state-map  "j"    #'smerge-next)
(define-key evil-conflict-merge-state-map  "k"    #'smerge-prev)
(define-key evil-conflict-merge-state-map  "U"    #'smerge-keep-upper)
(define-key evil-conflict-merge-state-map  "L"    #'smerge-keep-lower)
(define-key evil-conflict-merge-state-map  "RET"  #'smerge-keep-current)


(provide 'conflict-merge-state)
