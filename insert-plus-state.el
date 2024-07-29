;;; +state.el -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2021 John Grey
;;
;; Author: John Grey <https://github.com/johngrey>
;; Maintainer: John Grey <johngrey4296 at gmail.com>
;; Created: July 21, 2021
;; Modified: July 21, 2021
;; Version: 0.0.1
;; Keywords: Symbol’s value as variable is void: finder-known-keywords
;; Homepage: https://github.com/johngrey/+state
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary: an insert state with controllable SPC replacement
;;
;;
;;
;;; Code:
(require 'evil-core)

(defvar insert-plus-sep "_")

(defvar evil-insert-plus-state-map
  (make-sparse-keymap)
  "Keymap for Insert State with spaces remapped.")

(defun insert-plus-set-sep (str)
  (interactive (list (read-string (format "Separator: ('%s') " insert-plus-sep))))
  (setq insert-plus-sep str)
  )

(defun insert-plus-insert-sep ()
  (interactive)
  (insert insert-plus-sep)
  )

(keymap-set evil-insert-plus-state-map "ESC" #'evil-normal-state)

(keymap-set evil-insert-plus-state-map "SPC" #'insert-plus-insert-sep)

(keymap-set evil-insert-plus-state-map "§"   #'insert-plus-set-sep)

(keymap-set evil-insert-plus-state-map "TAB" #'evil-insert-state)

(when (fboundp #'evil-escape--get-appropriate-func)
  (defun insert-plus-escape-a (&rest r)
    " extends evil-escape for this new state "
    (when (evil-insert-plus-state-p)
      #'evil-normal-state)
    )

  (advice-add 'evil-escape--get-appropriate-func :before-until #'insert-plus-escape-a)
  )

;;;###autoload (autoload 'evil-insert-plus-state (macroexp-file-name) nil t)
(evil-define-state insert-plus
  "Insert State with spaces remapped"
  :tag "<I+>"
  :message "-- Insert+ --"
  :suppress-keymap nil
  :entry-hook (evil-start-track-last-insertion)
  :exit-hook  (evil-stop-track-last-insertion)
  :input-method nil
  )

(provide 'insert-plus-state)
