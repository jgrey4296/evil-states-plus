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

(defvar mapspace-sep "_")

(defvar evil-mapspace-state-map
  (make-keymap)
  "Keymap for Insert State with spaces remapped.")
(defvar evil-mapspace-escape-to 'evil-insert-state)

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

(keymap-set evil-mapspace-state-map "ESC" #'evil-normal-state)

(keymap-set evil-mapspace-state-map "SPC" #'mapspace-insert-sep)

(keymap-set evil-mapspace-state-map "§"   #'mapspace-set-sep)

(keymap-set evil-mapspace-state-map "TAB" #'evil-insert-state)

(keymap-set evil-mapspace-state-map "DEL" #'backward-delete-char)

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
