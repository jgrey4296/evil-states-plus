;;; mapspace-state.el -*- lexical-binding: t; -*-
(require 'evil-core)

(defvar mapspace-sep "_")

(defun mapspace-set-sep (str)
  "Set the char SPC is mapped to"
  (interactive (list (read-string (format "Separator: ('%s') " mapspace-sep))))
  (setq mapspace-sep str)
  )

(defun mapspace-insert-sep ()
  "command to insert the remapped space char"
  (interactive)
  (insert mapspace-sep)
  )

(defvar evil-mapspace-escape-to 'evil-insert-state)
(defvar evil-mapspace-state-map
  (define-keymap
    "ESC" #'evil-normal-state
    "SPC" #'mapspace-insert-sep
    "§"   #'mapspace-set-sep
    "TAB" #'evil-insert-state
    "DEL" #'backward-delete-char
    )
  "Keymap for Insert State with spaces remapped.")

(defun mapspace-escape-a (&rest r)
  " extends evil-escape for this new state "
  (when (evil-mapspace-state-p)
    #'evil-normal-state)
  )

(advice-add 'evil-escape--get-appropriate-func :before-until #'mapspace-escape-a)

;;;###autoload (autoload 'evil-mapspace-state "mapspace-state" nil t)
(evil-define-state mapspace
  "Insert State with spaces remapped"
  :tag "<I+>"
  :message "-- Insert+ --"
  :suppress-keymap nil
  :entry-hook (evil-start-track-last-insertion)
  :exit-hook  (evil-cleanup-insert-state evil-stop-track-last-insertion)
  :input-method nil
  )

(provide 'mapspace-state)
;;; mapspace-state.el ends here
