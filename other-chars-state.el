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

(defvar other-chars-diaeresis-map    (make-sparse-keymap))

(defvar other-chars-greek-map        (make-sparse-keymap))

(defvar other-chars-grave-map        (make-sparse-keymap))

(defvar other-chars-logic-map        (make-sparse-keymap))

(defvar other-chars-math-map         (make-sparse-keymap))

(defvar other-chars-subscript-map    (make-sparse-keymap))

(defvar other-chars-superscript-map  (make-sparse-keymap))

(defvar other-chars-tilde-map        (make-sparse-keymap))

(defvar other-chars-caron-map        (make-sparse-keymap))

;;-- acute

(evil-define-key nil other-chars-acute-map
  "'" (other-chars--insert "´")
  "a" (other-chars--insert "á")
  "c" (other-chars--insert "ć")
  "e" (other-chars--insert "é")
  "g" (other-chars--insert "ǵ")
  "i" (other-chars--insert "í")
  "k" (other-chars--insert "ḱ")
  "l" (other-chars--insert "ĺ")
  "m" (other-chars--insert "ḿ")
  "n" (other-chars--insert "ń")
  "o" (other-chars--insert "ó")
  "p" (other-chars--insert "ṕ")
  "r" (other-chars--insert "ŕ")
  "s" (other-chars--insert "ś")
  "u" (other-chars--insert "ú")
  "w" (other-chars--insert "ẃ")
  "y" (other-chars--insert "ý")
  "z" (other-chars--insert "ź")
  )
;;-- end acute

;;-- cedilla

(evil-define-key nil other-chars-cedilla-map
  "c"  (other-chars--insert "ç")
  "d"  (other-chars--insert "ḑ")
  "e"  (other-chars--insert "ȩ")
  "g"  (other-chars--insert "ģ")
  "h"  (other-chars--insert "ḩ")
  "k"  (other-chars--insert "ķ")
  "l"  (other-chars--insert "ļ")
  "n"  (other-chars--insert "ņ")
  "r"  (other-chars--insert "ŗ")
  "s"  (other-chars--insert "ş")
  "t"  (other-chars--insert "ţ")
  )
;;-- end cedilla

;;-- diaresis
(evil-define-key nil other-chars-diaeresis-map
  "a"  (other-chars--insert "ä")
  "e"  (other-chars--insert "ë")
  "h"  (other-chars--insert "ḧ")
  "i"  (other-chars--insert "ï")
  "o"  (other-chars--insert "ö")
  "t"  (other-chars--insert "ẗ")
  "u"  (other-chars--insert "ü")
  "w"  (other-chars--insert "ẅ")
  "x"  (other-chars--insert "ẍ")
  "y"  (other-chars--insert "ÿ")
  )
;;-- end diaresis

;;-- greek

(evil-define-key nil other-chars-greek-map
  "a"  (other-chars--insert "α")
  "b"  (other-chars--insert "β")
  "c"  (other-chars--insert "γ")
  "d"  (other-chars--insert "δ")
  "e"  (other-chars--insert "ε")
  "f"  (other-chars--insert "ζ")
  "g"  (other-chars--insert "η")
  "h"  (other-chars--insert "θ")
  "i"  (other-chars--insert "ι")
  "k"  (other-chars--insert "κ")
  "l"  (other-chars--insert "λ")
  "m"  (other-chars--insert "μ")
  "n"  (other-chars--insert "ν")
  "x"  (other-chars--insert "ξ")
  "o"  (other-chars--insert "ο")
  "p"  (other-chars--insert "π")
  "r"  (other-chars--insert "ρ")
  "s"  (other-chars--insert "σ")
  "t"  (other-chars--insert "τ")
  "u"  (other-chars--insert "υ")
  "v"  (other-chars--insert "φ")
  "x"  (other-chars--insert "χ")
  "y"  (other-chars--insert "ψ")
  "z"  (other-chars--insert "ω")
  )
;;-- end greek

;;-- grave

(evil-define-key nil other-chars-grave-map
  "a"  (other-chars--insert "à")
  "e"  (other-chars--insert "è")
  "i"  (other-chars--insert "ì")
  "n"  (other-chars--insert "ǹ")
  "o"  (other-chars--insert "ò")
  "u"  (other-chars--insert "ù")
  "w"  (other-chars--insert "ẁ")
  "y"  (other-chars--insert "ỳ")
  )
;;-- end grave

;;-- logic

(evil-define-key nil other-chars-logic-map
  "a"  (other-chars--insert "∀")
  "E"  (other-chars--insert "∃")
  "N"  (other-chars--insert "∄")
  "e"  (other-chars--insert "∈")
  "n"  (other-chars--insert "¬")
  "d"  (other-chars--insert "∨")
  "c"  (other-chars--insert "∧")
  "<"  (other-chars--insert "⧼")
  ">"  (other-chars--insert "⧼")
  "i"  (other-chars--insert "⇒")
  "I"  (other-chars--insert "⇔")
  "t"  (other-chars--insert "⟙")
  "b"  (other-chars--insert "⟘")
  "\\" (other-chars--insert "⊨")
  "/"  (other-chars--insert "⊢")
  "T"  (other-chars--insert "∴")
  "["  (other-chars--insert "□")
  "]"  (other-chars--insert "◇")
  "o"  (other-chars--insert "⚬")
  )
;;-- end logic

;;-- math

(evil-define-key nil other-chars-math-map
  "s" (other-chars--insert "⊂")
  "S" (other-chars--insert "⊃")
  "e" (other-chars--insert "⊆")
  "E" (other-chars--insert "⊇")
  "n" (other-chars--insert "∅")
  "i" (other-chars--insert "∩")
  "u" (other-chars--insert "∪")
  "q" (other-chars--insert "√")
  "8" (other-chars--insert "∞")
  "p" (other-chars--insert "π")
  )
;;-- end math

;;-- subscript

(evil-define-key nil other-chars-subscript-map
  "1" (other-chars--insert "₁")
  "2" (other-chars--insert "₂")
  "3" (other-chars--insert "₃")
  "4" (other-chars--insert "₄")
  "5" (other-chars--insert "₅")
  "6" (other-chars--insert "₆")
  "7" (other-chars--insert "₇")
  "8" (other-chars--insert "₈")
  "9" (other-chars--insert "₉")
  "0" (other-chars--insert "₀")
  "j" (other-chars--insert "ⱼ")
  "i" (other-chars--insert "ᵢ")
  "+" (other-chars--insert "₊")
  "-" (other-chars--insert "₋")
  "x" (other-chars--insert "ₓ")
  )
;;-- end subscript

;;-- superscript

(evil-define-key nil other-chars-superscript-map
  "1" (other-chars--insert "¹")
  "2" (other-chars--insert "²")
  "3" (other-chars--insert "³")
  "4" (other-chars--insert "⁴")
  "5" (other-chars--insert "⁵")
  "6" (other-chars--insert "⁶")
  "7" (other-chars--insert "⁷")
  "8" (other-chars--insert "⁸")
  "9" (other-chars--insert "⁹")
  "i" (other-chars--insert "ⁱ")
  "n" (other-chars--insert "ⁿ")
  )
;;-- end superscript

;;-- tilde

(evil-define-key nil other-chars-tilde-map
  "a"  (other-chars--insert "ã")
  "e"  (other-chars--insert "ẽ")
  "i"  (other-chars--insert "ĩ")
  "n"  (other-chars--insert "ñ")
  "o"  (other-chars--insert "õ")
  "u"  (other-chars--insert "ũ")
  "v"  (other-chars--insert "ṽ")
  "y"  (other-chars--insert "ỹ")
  )
;;-- end tilde

;;-- caron
(evil-define-key nil other-chars-caron-map
  "a"  (other-chars--insert "ǎ")
  "c"  (other-chars--insert "č")
  "d"  (other-chars--insert "ď")
  "e"  (other-chars--insert "ě")
  "g"  (other-chars--insert "ǧ")
  "h"  (other-chars--insert "ȟ")
  "i"  (other-chars--insert "ǐ")
  "j"  (other-chars--insert "ǰ")
  "k"  (other-chars--insert "ǩ")
  "l"  (other-chars--insert "ľ")
  "n"  (other-chars--insert "ň")
  "o"  (other-chars--insert "ǒ")
  "r"  (other-chars--insert "ř")
  "s"  (other-chars--insert "š")
  "t"  (other-chars--insert "ť")
  "u"  (other-chars--insert "ǔ")
  "z"  (other-chars--insert "ž")
  )

;;-- end caron

;;-- assemble

(evil-define-key  nil  other-chars-cx8-map
  "'"               other-chars-acute-map
  ","               other-chars-cedilla-map
  "\""              other-chars-diaeresis-map
  "g"               other-chars-greek-map
  "`"               other-chars-grave-map
  "l"               other-chars-logic-map
  "m"               other-chars-math-map
  "/"               other-chars-subscript-map
  "\\"              other-chars-superscript-map
  "~"               other-chars-tilde-map
  "^"               other-chars-caron-map
  "RET"             #'insert-char
  )

(evil-define-key nil evil-other-chars-state-map
  "'"               other-chars-acute-map
  ","               other-chars-cedilla-map
  "\""              other-chars-diaeresis-map
  "g"               other-chars-greek-map
  "`"               other-chars-grave-map
  "l"               other-chars-logic-map
  "m"               other-chars-math-map
  "/"               other-chars-subscript-map
  "\\"              other-chars-superscript-map
  "~"               other-chars-tilde-map
  "^"               other-chars-caron-map
  "-"               (other-chars--insert "—")
  (kbd "RET")             #'insert-char
  "?"               #'other-chars-reminder
  )

(defun other-chars-reminder ()
  (interactive)
  (message "Char Groups:\n%s"
           (string-join '("'   : Acute"
                          ",   : Cedilla"
                          "\"  : Diaeresis"
                          "`   : Grave'"
                          "~   : Tilde"
                          "g   : Greek Letters"
                          "m   : Math Symbols"
                          "l   : Logic Symbols"
                          "/   : Subscripts"
                          "\\  : Superscripts"
                          "^   : Carons"
                          "RET : Insert Interactively"
                          )
                        "\n"
                        )
           )
  )

(when (fboundp 'general-insert-call)
  (define-key other-chars-cx8-map         "DEL" #'general-insert-call)
  (define-key evil-other-chars-state-map  "DEL" #'general-insert-call)
  )

;;-- end assemble

;;;###autoload (autoload 'evil-other-chars-state (macroexp-file-name) nil t)
(evil-define-state other-chars
  "An Insert State for characters not usually used in english"
  :tag "<ç>"
  :message "-- Chars --"
  ;; :suppress-keymap nil
  :input-method t
  )

;; TODO transient

;;-- descriptions
(when (fboundp 'faster-whichkey-add-keymap-replacement)
  (faster-whichkey-add-keymap-replacement nil other-chars-acute-map
                                          "'" "´"
                                          "a" "á"
                                          "c" "ć"
                                          "e" "é"
                                          "g" "ǵ"
                                          "i" "í"
                                          "k" "ḱ"
                                          "l" "ĺ"
                                          "m" "ḿ"
                                          "n" "ń"
                                          "o" "ó"
                                          "p" "ṕ"
                                          "r" "ŕ"
                                          "s" "ś"
                                          "u" "ú"
                                          "w" "ẃ"
                                          "y" "ý"
                                          "z" "ź"
                                          )
  (faster-whichkey-add-keymap-replacement nil other-chars-cedilla-map
                                          "c" "ç"
                                          "d" "ḑ"
                                          "e" "ȩ"
                                          "g" "ģ"
                                          "h" "ḩ"
                                          "k" "ķ"
                                          "l" "ļ"
                                          "n" "ņ"
                                          "r" "ŗ"
                                          "s" "ş"
                                          "t" "ţ"
                                          )
  (faster-whichkey-add-keymap-replacement nil other-chars-diaeresis-map
                                          "a" "ä"
                                          "e" "ë"
                                          "h" "ḧ"
                                          "i" "ï"
                                          "o" "ö"
                                          "t" "ẗ"
                                          "u" "ü"
                                          "w" "ẅ"
                                          "x" "ẍ"
                                          "y" "ÿ"
                                          )
  (faster-whichkey-add-keymap-replacement nil other-chars-greek-map
                                          "a" "α"
                                          "b" "β"
                                          "c" "γ"
                                          "d" "δ"
                                          "e" "ε"
                                          "f" "ζ"
                                          "g" "η"
                                          "h" "θ"
                                          "i" "ι"
                                          "k" "κ"
                                          "l" "λ"
                                          "m" "μ"
                                          "n" "ν"
                                          "x" "ξ"
                                          "o" "ο"
                                          "p" "π"
                                          "r" "ρ"
                                          "s" "σ"
                                          "t" "τ"
                                          "u" "υ"
                                          "v" "φ"
                                          "x" "χ"
                                          "y" "ψ"
                                          "z" "ω"
                                          )
  (faster-whichkey-add-keymap-replacement nil other-chars-grave-map
                                          "a" "à"
                                          "e" "è"
                                          "i" "ì"
                                          "n" "ǹ"
                                          "o" "ò"
                                          "u" "ù"
                                          "w" "ẁ"
                                          "y" "ỳ"
                                          )
  (faster-whichkey-add-keymap-replacement nil other-chars-logic-map
                                          "a" "∀"
                                          "E" "∃"
                                          "N" "∄"
                                          "e" "∈"
                                          "n" "¬"
                                          "d" "∨"
                                          "c" "∧"
                                          "<" "⧼"
                                          ">" "⧼"
                                          "i" "⇒"
                                          "I" "⇔"
                                          "t" "⟙"
                                          "b" "⟘"
                                          "\\" "⊨"
                                          "/" "⊢"
                                          "T" "∴"
                                          "[" "□"
                                          "]" "◇"
                                          "o" "⚬"
                                          )
  (faster-whichkey-add-keymap-replacement nil other-chars-math-map
                                          "s" "⊂"
                                          "S" "⊃"
                                          "e" "⊆"
                                          "E" "⊇"
                                          "n" "∅"
                                          "i" "∩"
                                          "u" "∪"
                                          "q" "√"
                                          "8" "∞"
                                          "p" "π"
                                          )
  (faster-whichkey-add-keymap-replacement nil other-chars-subscript-map
                                          "1" "₁"
                                          "2" "₂"
                                          "3" "₃"
                                          "4" "₄"
                                          "5" "₅"
                                          "6" "₆"
                                          "7" "₇"
                                          "8" "₈"
                                          "9" "₉"
                                          "0" "₀"
                                          "j" "ⱼ"
                                          "i" "ᵢ"
                                          "+" "₊"
                                          "-" "₋"
                                          "x" "ₓ"
                                          )
  (faster-whichkey-add-keymap-replacement nil other-chars-superscript-map
                                          "1" "¹"
                                          "2" "²"
                                          "3" "³"
                                          "4" "⁴"
                                          "5" "⁵"
                                          "6" "⁶"
                                          "7" "⁷"
                                          "8" "⁸"
                                          "9" "⁹"
                                          "i" "ⁱ"
                                          "n" "ⁿ"
                                          )
  (faster-whichkey-add-keymap-replacement nil other-chars-tilde-map
                                          "a" "ã"
                                          "e" "ẽ"
                                          "i" "ĩ"
                                          "n" "ñ"
                                          "o" "õ"
                                          "u" "ũ"
                                          "v" "ṽ"
                                          "y" "ỹ"
                                          )

(faster-whichkey-add-keymap-replacement nil other-chars-caron-map
                                        "a"  "ǎ"
                                        "c"  "č"
                                        "d"  "ď"
                                        "e"  "ě"
                                        "g"  "ǧ"
                                        "h"  "ȟ"
                                        "i"  "ǐ"
                                        "j"  "ǰ"
                                        "k"  "ǩ"
                                        "l"  "ľ"
                                        "n"  "ň"
                                        "o"  "ǒ"
                                        "r"  "ř"
                                        "s"  "š"
                                        "t"  "ť"
                                        "u"  "ǔ"
                                        "z"  "ž"
                                        )
)
;;-- end descriptions

(provide 'other-chars-state)
;;; other-chars-state.el ends here
