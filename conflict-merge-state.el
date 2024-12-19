;;; -*- lexical-binding: t; -*-
(require 'evil-core)
(require 'smerge-mode)

(defvar evil-conflict-merge-state-map (make-keymap))
(evil-make-intercept-map evil-conflict-merge-state-map)

;;;###autoload (autoload 'evil-conflict-merge-state "conflict-merge-state" nil t)
 (evil-define-state conflict-merge
    "Merge Conflict State."
    :tag "<MC>"
    :message "-- MERGE CONFLICT --"
    :suppress-keymap t
    )

(keymap-set evil-conflict-merge-state-map  "j"    #'smerge-next)
(keymap-set evil-conflict-merge-state-map  "k"    #'smerge-prev)
(keymap-set evil-conflict-merge-state-map  "U"    #'smerge-keep-upper)
(keymap-set evil-conflict-merge-state-map  "L"    #'smerge-keep-lower)
(keymap-set evil-conflict-merge-state-map  "RET"  #'smerge-keep-current)


(provide 'conflict-merge-state)
