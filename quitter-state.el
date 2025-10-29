;;; quitter-state.el -*- lexical-binding: t; -*-
(require 'evil-core)

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
;;; quitter-state.el ends here
