;;; other-chars-state.el -*- lexical-binding: t; no-byte-compile: t; -*-
;;-- header
;;
;; Copyright (C) 2023 John Grey
;;
;; Author: John Grey <https://github.com/jgrey4296>
;; Maintainer: John Grey <johngrey@Johns-Mac-mini.local>
;; Created: August 27, 2023
;; Modified: August 27, 2023
;; Version: 0.0.1
;; Keywords:
;; Homepage: https://github.com/jgrey4296
;; Package-Requires: ((emacs "24.3"))
;; Package written on: ((emacs 28.2))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;
;;
;;; Code:
;;-- end header
(require 'evil-core)

(defvar evil-other-chars-state-map (make-keymap))
(suppress-keymap evil-other-chars-state-map)

(defmacro other-chars--insert (char)
  `(lambda ()
     (interactive)
     (insert ,char)))

(defvar other-chars-cx8-map          (make-sparse-keymap))

(defvar other-chars-acute-map        (make-sparse-keymap))

(defvar other-chars-cedilla-map      (make-sparse-keymap))

(defvar other-chars-diaeresis-map   (make-sparse-keymap))

(defvar other-chars-greek-map        (make-sparse-keymap))

(defvar other-chars-grave-map        (make-sparse-keymap))

(defvar other-chars-logic-map        (make-sparse-keymap))

(defvar other-chars-math-map         (make-sparse-keymap))

(defvar other-chars-subscript-map    (make-sparse-keymap))

(defvar other-chars-superscript-map  (make-sparse-keymap))

(defvar other-chars-tilde-map        (make-sparse-keymap))

;;-- acute

(define-key other-chars-acute-map "'" (other-chars--insert "´"))

(define-key other-chars-acute-map "a" (other-chars--insert "á"))

(define-key other-chars-acute-map "c" (other-chars--insert "ć"))

(define-key other-chars-acute-map "e" (other-chars--insert "é"))

(define-key other-chars-acute-map "g" (other-chars--insert "ǵ"))

(define-key other-chars-acute-map "i" (other-chars--insert "í"))

(define-key other-chars-acute-map "k" (other-chars--insert "ḱ"))

(define-key other-chars-acute-map "l" (other-chars--insert "ĺ"))

(define-key other-chars-acute-map "m" (other-chars--insert "ḿ"))

(define-key other-chars-acute-map "n" (other-chars--insert "ń"))

(define-key other-chars-acute-map "o" (other-chars--insert "ó"))

(define-key other-chars-acute-map "p" (other-chars--insert "ṕ"))

(define-key other-chars-acute-map "r" (other-chars--insert "ŕ"))

(define-key other-chars-acute-map "s" (other-chars--insert "ś"))

(define-key other-chars-acute-map "u" (other-chars--insert "ú"))

(define-key other-chars-acute-map "w" (other-chars--insert "ẃ"))

(define-key other-chars-acute-map "y" (other-chars--insert "ý"))

(define-key other-chars-acute-map "z" (other-chars--insert "ź"))
;;-- end acute

;;-- cedilla


(define-key other-chars-cedilla-map "c"  (other-chars--insert "ç"))

(define-key other-chars-cedilla-map "d"  (other-chars--insert "ḑ"))

(define-key other-chars-cedilla-map "e"  (other-chars--insert "ȩ"))

(define-key other-chars-cedilla-map "g"  (other-chars--insert "ģ"))

(define-key other-chars-cedilla-map "h"  (other-chars--insert "ḩ"))

(define-key other-chars-cedilla-map "k"  (other-chars--insert "ķ"))

(define-key other-chars-cedilla-map "l"  (other-chars--insert "ļ"))

(define-key other-chars-cedilla-map "n"  (other-chars--insert "ņ"))

(define-key other-chars-cedilla-map "r"  (other-chars--insert "ŗ"))

(define-key other-chars-cedilla-map "s"  (other-chars--insert "ş"))

(define-key other-chars-cedilla-map "t"  (other-chars--insert "ţ"))
;;-- end cedilla

;;-- diaresis

(define-key other-chars-diaeresis-map "a"  (other-chars--insert "ä"))

(define-key other-chars-diaeresis-map "e"  (other-chars--insert "ë"))

(define-key other-chars-diaeresis-map "h"  (other-chars--insert "ḧ"))

(define-key other-chars-diaeresis-map "i"  (other-chars--insert "ï"))

(define-key other-chars-diaeresis-map "o"  (other-chars--insert "ö"))

(define-key other-chars-diaeresis-map "t"  (other-chars--insert "ẗ"))

(define-key other-chars-diaeresis-map "u"  (other-chars--insert "ü"))

(define-key other-chars-diaeresis-map "w"  (other-chars--insert "ẅ"))

(define-key other-chars-diaeresis-map "x"  (other-chars--insert "ẍ"))

(define-key other-chars-diaeresis-map "y"  (other-chars--insert "ÿ"))
;;-- end diaresis

;;-- greek

(define-key other-chars-greek-map "a"  (other-chars--insert "α"))

(define-key other-chars-greek-map "b"  (other-chars--insert "β"))

(define-key other-chars-greek-map "c"  (other-chars--insert "γ"))

(define-key other-chars-greek-map "d"  (other-chars--insert "δ"))

(define-key other-chars-greek-map "e"  (other-chars--insert "ε"))

(define-key other-chars-greek-map "f"  (other-chars--insert "ζ"))

(define-key other-chars-greek-map "g"  (other-chars--insert "η"))

(define-key other-chars-greek-map "h"  (other-chars--insert "θ"))

(define-key other-chars-greek-map "i"  (other-chars--insert "ι"))

(define-key other-chars-greek-map "k"  (other-chars--insert "κ"))

(define-key other-chars-greek-map "l"  (other-chars--insert "λ"))

(define-key other-chars-greek-map "m"  (other-chars--insert "μ"))

(define-key other-chars-greek-map "n"  (other-chars--insert "ν"))

(define-key other-chars-greek-map "x"  (other-chars--insert "ξ"))

(define-key other-chars-greek-map "o"  (other-chars--insert "ο"))

(define-key other-chars-greek-map "p"  (other-chars--insert "π"))

(define-key other-chars-greek-map "r"  (other-chars--insert "ρ"))

(define-key other-chars-greek-map "s"  (other-chars--insert "σ"))

(define-key other-chars-greek-map "t"  (other-chars--insert "τ"))

(define-key other-chars-greek-map "u"  (other-chars--insert "υ"))

(define-key other-chars-greek-map "v"  (other-chars--insert "φ"))

(define-key other-chars-greek-map "x"  (other-chars--insert "χ"))

(define-key other-chars-greek-map "y"  (other-chars--insert "ψ"))

(define-key other-chars-greek-map "z"  (other-chars--insert "ω"))
;;-- end greek

;;-- grave

(define-key other-chars-grave-map "a"  (other-chars--insert "à"))

(define-key other-chars-grave-map "e"  (other-chars--insert "è"))

(define-key other-chars-grave-map "i"  (other-chars--insert "ì"))

(define-key other-chars-grave-map "n"  (other-chars--insert "ǹ"))

(define-key other-chars-grave-map "o"  (other-chars--insert "ò"))

(define-key other-chars-grave-map "u"  (other-chars--insert "ù"))

(define-key other-chars-grave-map "w"  (other-chars--insert "ẁ"))

(define-key other-chars-grave-map "y"  (other-chars--insert "ỳ"))
;;-- end grave

;;-- logic

(define-key other-chars-logic-map "a"  (other-chars--insert "∀"))

(define-key other-chars-logic-map "E"  (other-chars--insert "∃"))

(define-key other-chars-logic-map "N"  (other-chars--insert "∄"))

(define-key other-chars-logic-map "e"  (other-chars--insert "∈"))

(define-key other-chars-logic-map "n"  (other-chars--insert "¬"))

(define-key other-chars-logic-map "d"  (other-chars--insert "∨"))

(define-key other-chars-logic-map "c"  (other-chars--insert "∧"))

(define-key other-chars-logic-map "<"  (other-chars--insert "⧼"))

(define-key other-chars-logic-map ">"  (other-chars--insert "⧼"))

(define-key other-chars-logic-map "i"  (other-chars--insert "⇒"))

(define-key other-chars-logic-map "I"  (other-chars--insert "⇔"))

(define-key other-chars-logic-map "t"  (other-chars--insert "⟙"))

(define-key other-chars-logic-map "b"  (other-chars--insert "⟘"))

(define-key other-chars-logic-map "\\" (other-chars--insert "⊨"))

(define-key other-chars-logic-map "/"  (other-chars--insert "⊢"))

(define-key other-chars-logic-map "T"  (other-chars--insert "∴"))

(define-key other-chars-logic-map "["  (other-chars--insert "□"))

(define-key other-chars-logic-map "]"  (other-chars--insert "◇"))

(define-key other-chars-logic-map "o"  (other-chars--insert "⚬"))
;;-- end logic

;;-- math

(define-key other-chars-math-map "s" (other-chars--insert "⊂"))

(define-key other-chars-math-map "S" (other-chars--insert "⊃"))

(define-key other-chars-math-map "e" (other-chars--insert "⊆"))

(define-key other-chars-math-map "E" (other-chars--insert "⊇"))

(define-key other-chars-math-map "n" (other-chars--insert "∅"))

(define-key other-chars-math-map "i" (other-chars--insert "∩"))

(define-key other-chars-math-map "u" (other-chars--insert "∪"))

(define-key other-chars-math-map "q" (other-chars--insert "√"))

(define-key other-chars-math-map "8" (other-chars--insert "∞"))

(define-key other-chars-math-map "p"  (other-chars--insert "π"))
;;-- end math

;;-- subscript

(define-key other-chars-subscript-map "1" (other-chars--insert "₁"))

(define-key other-chars-subscript-map "2" (other-chars--insert "₂"))

(define-key other-chars-subscript-map "3" (other-chars--insert "₃"))

(define-key other-chars-subscript-map "4" (other-chars--insert "₄"))

(define-key other-chars-subscript-map "5" (other-chars--insert "₅"))

(define-key other-chars-subscript-map "6" (other-chars--insert "₆"))

(define-key other-chars-subscript-map "7" (other-chars--insert "₇"))

(define-key other-chars-subscript-map "8" (other-chars--insert "₈"))

(define-key other-chars-subscript-map "9" (other-chars--insert "₉"))

(define-key other-chars-subscript-map "0" (other-chars--insert "₀"))

(define-key other-chars-subscript-map "j" (other-chars--insert "ⱼ"))

(define-key other-chars-subscript-map "i" (other-chars--insert "ᵢ"))

(define-key other-chars-subscript-map "+" (other-chars--insert "₊"))

(define-key other-chars-subscript-map "-" (other-chars--insert "₋"))

(define-key other-chars-subscript-map "x" (other-chars--insert "ₓ"))
;;-- end subscript

;;-- superscript

(define-key other-chars-superscript-map "1" (other-chars--insert "¹"))

(define-key other-chars-superscript-map "2" (other-chars--insert "²"))

(define-key other-chars-superscript-map "3" (other-chars--insert "³"))

(define-key other-chars-superscript-map "4" (other-chars--insert "⁴"))

(define-key other-chars-superscript-map "5" (other-chars--insert "⁵"))

(define-key other-chars-superscript-map "6" (other-chars--insert "⁶"))

(define-key other-chars-superscript-map "7" (other-chars--insert "⁷"))

(define-key other-chars-superscript-map "8" (other-chars--insert "⁸"))

(define-key other-chars-superscript-map "9" (other-chars--insert "⁹"))

(define-key other-chars-superscript-map "i" (other-chars--insert "ⁱ"))

(define-key other-chars-superscript-map "n" (other-chars--insert "ⁿ"))
;;-- end superscript

;;-- tilde

(define-key other-chars-tilde-map  "a"  (other-chars--insert "ã"))

(define-key other-chars-tilde-map  "e"  (other-chars--insert "ẽ"))

(define-key other-chars-tilde-map  "i"  (other-chars--insert "ĩ"))

(define-key other-chars-tilde-map  "n"  (other-chars--insert "ñ"))

(define-key other-chars-tilde-map  "o"  (other-chars--insert "õ"))

(define-key other-chars-tilde-map  "u"  (other-chars--insert "ũ"))

(define-key other-chars-tilde-map  "v"  (other-chars--insert "ṽ"))

(define-key other-chars-tilde-map  "y"  (other-chars--insert "ỹ"))
;;-- end tilde

;;-- assemble
(define-key other-chars-cx8-map         "'"               other-chars-acute-map)

(define-key other-chars-cx8-map         ","               other-chars-cedilla-map)

(define-key other-chars-cx8-map         "\""              other-charst-diaeresis-map)

(define-key other-chars-cx8-map         "g"               other-chars-greek-map)

(define-key other-chars-cx8-map         "`"               other-chars-grave-map)

(define-key other-chars-cx8-map         "l"               other-chars-logic-map)

(define-key other-chars-cx8-map         "M"               other-chars-math-map)

(define-key other-chars-cx8-map         "/"               other-chars-subscript-map)

(define-key other-chars-cx8-map         "\\"              other-chars-superscript-map)

(define-key other-chars-cx8-map         "~"               other-chars-tilde-map)

(define-key other-chars-cx8-map         "RET" #'insert-char)
(when (fboundp 'general-insert-call)
  (define-key other-chars-cx8-map         "DEL" #'general-insert-call)
  )


(define-key evil-other-chars-state-map         "'"               other-chars-acute-map)

(define-key evil-other-chars-state-map         ","               other-chars-cedilla-map)

(define-key evil-other-chars-state-map         "\""              other-charst-diaeresis-map)

(define-key evil-other-chars-state-map         "g"               other-chars-greek-map)

(define-key evil-other-chars-state-map         "`"               other-chars-grave-map)

(define-key evil-other-chars-state-map         "l"               other-chars-logic-map)

(define-key evil-other-chars-state-map         "M"               other-chars-math-map)

(define-key evil-other-chars-state-map         "/"               other-chars-subscript-map)

(define-key evil-other-chars-state-map         "\\"              other-chars-superscript-map)

(define-key evil-other-chars-state-map         "~"               other-chars-tilde-map)

(define-key evil-other-chars-state-map         "RET" #'insert-char)
(when (fboundp 'genera-insert-call)
  (define-key evil-other-chars-state-map         "DEL" #'general-insert-call)
  )

;;-- end assemble


;;;###autoload
(evil-define-state other-chars
  "An Insert State for characters not usually used in english"
  :tag "<ç>"
  :message "-- Chars --"
  ;; :suppress-keymap nil
  :input-method t
  )

;; TODO transient

(provide 'other-chars-state)
;;; other-chars-state.el ends here
