;;; quitter-state.el -*- lexical-binding: t; no-byte-compile: t; -*-
;;-- Header
;; File Commentary:
;;
;;
;; See footer for licenses/metadata/notes as applicable
;;-- end Header

(evil-define-state -quitter
  "A utility state to always quit the state with Q"
  :tag "<Q">
  :message "-- Quitter --"
  )

(evil-define-key* '-quitter 'global
  (kbd "SPC")   'doom/leader
  (kbd "DEL")    #'ignore
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
(provide 'quitter-state)

;;-- Footer
;; Copyright (C) 2024 john
;;
;; Author:     john <https://github.com/jgrey4296>
;; Maintainer: john <john@john-UM700>
;; Created:    September 09, 2024
;; Modified:   September 09, 2024
;; Version: 0.0.1
;; Keywords:
;; Homepage: https://github.com/jgrey4296
;; Package-Requires: ((emacs "24.3"))
;; Package written on: ((emacs 29.1))
;;
;; This file is not part of GNU Emacs.
;;
;;-- end Footer
;;; quitter-state.el ends here
