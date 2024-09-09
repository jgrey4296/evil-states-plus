;;; spechar-state.el -*- lexical-binding: t; no-byte-compile: t; -*-
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
(require 'counsel)

(defvar evil-spechar-state-map (make-keymap))
(suppress-keymap evil-spechar-state-map)

(defun spechar--prefixed-unicode-char (prefix)
  " Start a counsel to insert a unicode char, with a provided selection prefix "
  (setq ivy-completion-beg (point)
        ivy-completion-end (point))
  (ivy-read "Unicode name: " counsel--unicode-table
            :initial-input prefix
            :history 'counsel-unicode-char-history
            :action (lambda (name)
                      (with-ivy-window
                        (delete-region ivy-completion-beg ivy-completion-end)
                        (setq ivy-completion-beg (point))
                        (insert-char (get-text-property 0 'code name) count)
                        (setq ivy-completion-end (point))))
            :caller 'counsel-unicode-char)
  )


(defmacro spechar--prep-counsel (prefix)
  `(lambda ()
     (interactive)
     (spechar--prefix-unicode-char ,prefix)))

(defmacro spechar--insert (char)
  `(lambda ()
     (interactive)
     (insert ,char)))


;;-- acute

(evil-define-key 'spechar 'global
  "''" (spechar--insert "´")
  "'a" (spechar--insert "á")
  "'c" (spechar--insert "ć")
  "'e" (spechar--insert "é")
  "'g" (spechar--insert "ǵ")
  "'i" (spechar--insert "í")
  "'k" (spechar--insert "ḱ")
  "'l" (spechar--insert "ĺ")
  "'m" (spechar--insert "ḿ")
  "'n" (spechar--insert "ń")
  "'o" (spechar--insert "ó")
  "'p" (spechar--insert "ṕ")
  "'r" (spechar--insert "ŕ")
  "'s" (spechar--insert "ś")
  "'u" (spechar--insert "ú")
  "'w" (spechar--insert "ẃ")
  "'y" (spechar--insert "ý")
  "'z" (spechar--insert "ź")
  )
;;-- end acute

;;-- cedilla
(evil-define-key 'spechar 'global
  ",c"  (spechar--insert "ç")
  ",d"  (spechar--insert "ḑ")
  ",e"  (spechar--insert "ȩ")
  ",g"  (spechar--insert "ģ")
  ",h"  (spechar--insert "ḩ")
  ",k"  (spechar--insert "ķ")
  ",l"  (spechar--insert "ļ")
  ",n"  (spechar--insert "ņ")
  ",r"  (spechar--insert "ŗ")
  ",s"  (spechar--insert "ş")
  ",t"  (spechar--insert "ţ")
  )
;;-- end cedilla

;;-- diaresis
(evil-define-key 'spechar 'global
  "\"a"  (spechar--insert "ä")
  "\"e"  (spechar--insert "ë")
  "\"h"  (spechar--insert "ḧ")
  "\"i"  (spechar--insert "ï")
  "\"o"  (spechar--insert "ö")
  "\"t"  (spechar--insert "ẗ")
  "\"u"  (spechar--insert "ü")
  "\"w"  (spechar--insert "ẅ")
  "\"x"  (spechar--insert "ẍ")
  "\"y"  (spechar--insert "ÿ")
  )
;;-- end diaresis

;;-- greek
(evil-define-key 'spechar 'global
  "ga"  (spechar--insert "α")
  "gb"  (spechar--insert "β")
  "gc"  (spechar--insert "γ")
  "gd"  (spechar--insert "δ")
  "ge"  (spechar--insert "ε")
  "gf"  (spechar--insert "ζ")
  "gg"  (spechar--insert "η")
  "gh"  (spechar--insert "θ")
  "gi"  (spechar--insert "ι")
  "gk"  (spechar--insert "κ")
  "gl"  (spechar--insert "λ")
  "gm"  (spechar--insert "μ")
  "gn"  (spechar--insert "ν")
  "gx"  (spechar--insert "ξ")
  "go"  (spechar--insert "ο")
  "gp"  (spechar--insert "π")
  "gr"  (spechar--insert "ρ")
  "gs"  (spechar--insert "σ")
  "gt"  (spechar--insert "τ")
  "gu"  (spechar--insert "υ")
  "gv"  (spechar--insert "φ")
  "gx"  (spechar--insert "χ")
  "gy"  (spechar--insert "ψ")
  "gz"  (spechar--insert "ω")
  )
;;-- end greek

;;-- grave
(evil-define-key 'spechar 'global
  "`a"  (spechar--insert "à")
  "`e"  (spechar--insert "è")
  "`i"  (spechar--insert "ì")
  "`n"  (spechar--insert "ǹ")
  "`o"  (spechar--insert "ò")
  "`u"  (spechar--insert "ù")
  "`w"  (spechar--insert "ẁ")
  "`y"  (spechar--insert "ỳ")
  )
;;-- end grave

;;-- logic
(evil-define-key 'spechar 'global
  "la"  (spechar--insert "∀")
  "lE"  (spechar--insert "∃")
  "lN"  (spechar--insert "∄")
  "le"  (spechar--insert "∈")
  "ln"  (spechar--insert "¬")
  "ld"  (spechar--insert "∨")
  "lc"  (spechar--insert "∧")
  "l<"  (spechar--insert "⧼")
  "l>"  (spechar--insert "⧼")
  "li"  (spechar--insert "⇒")
  "lI"  (spechar--insert "⇔")
  "lt"  (spechar--insert "⟙")
  "lb"  (spechar--insert "⟘")
  "l\\" (spechar--insert "⊨")
  "l/"  (spechar--insert "⊢")
  "lT"  (spechar--insert "∴")
  "l["  (spechar--insert "□")
  "l]"  (spechar--insert "◇")
  "lo"  (spechar--insert "⚬")
  )
;;-- end logic

;;-- math
(evil-define-key 'spechar 'global
  "ms" (spechar--insert "⊂")
  "mS" (spechar--insert "⊃")
  "me" (spechar--insert "⊆")
  "mE" (spechar--insert "⊇")
  "mn" (spechar--insert "∅")
  "mi" (spechar--insert "∩")
  "mu" (spechar--insert "∪")
  "mq" (spechar--insert "√")
  "m8" (spechar--insert "∞")
  "mp" (spechar--insert "π")
  )
;;-- end math

;;-- subscript
(evil-define-key 'spechar 'global
  "/1" (spechar--insert "₁")
  "/2" (spechar--insert "₂")
  "/3" (spechar--insert "₃")
  "/4" (spechar--insert "₄")
  "/5" (spechar--insert "₅")
  "/6" (spechar--insert "₆")
  "/7" (spechar--insert "₇")
  "/8" (spechar--insert "₈")
  "/9" (spechar--insert "₉")
  "/0" (spechar--insert "₀")
  "/j" (spechar--insert "ⱼ")
  "/i" (spechar--insert "ᵢ")
  "/+" (spechar--insert "₊")
  "/-" (spechar--insert "₋")
  "/x" (spechar--insert "ₓ")
  )
;;-- end subscript

;;-- superscript
(evil-define-key 'spechar 'global
  "\1" (spechar--insert "¹")
  "\2" (spechar--insert "²")
  "\3" (spechar--insert "³")
  "\4" (spechar--insert "⁴")
  "\5" (spechar--insert "⁵")
  "\6" (spechar--insert "⁶")
  "\7" (spechar--insert "⁷")
  "\8" (spechar--insert "⁸")
  "\9" (spechar--insert "⁹")
  "\i" (spechar--insert "ⁱ")
  "\n" (spechar--insert "ⁿ")
  )
;;-- end superscript

;;-- tilde
(evil-define-key 'spechar 'global
  "~a"  (spechar--insert "ã")
  "~e"  (spechar--insert "ẽ")
  "~i"  (spechar--insert "ĩ")
  "~n"  (spechar--insert "ñ")
  "~o"  (spechar--insert "õ")
  "~u"  (spechar--insert "ũ")
  "~v"  (spechar--insert "ṽ")
  "~y"  (spechar--insert "ỹ")
  )
;;-- end tilde

;;-- caron
(evil-define-key 'spechar 'global
  "^a"  (spechar--insert "ǎ")
  "^c"  (spechar--insert "č")
  "^d"  (spechar--insert "ď")
  "^e"  (spechar--insert "ě")
  "^g"  (spechar--insert "ǧ")
  "^h"  (spechar--insert "ȟ")
  "^i"  (spechar--insert "ǐ")
  "^j"  (spechar--insert "ǰ")
  "^k"  (spechar--insert "ǩ")
  "^l"  (spechar--insert "ľ")
  "^n"  (spechar--insert "ň")
  "^o"  (spechar--insert "ǒ")
  "^r"  (spechar--insert "ř")
  "^s"  (spechar--insert "š")
  "^t"  (spechar--insert "ť")
  "^u"  (spechar--insert "ǔ")
  "^z"  (spechar--insert "ž")
  )

;;-- end caron

;;-- underdot
(evil-define-key 'spechar 'global
  ".ub" (spechar--insert "ḅ")
  ".ud" (spechar--insert "ḍ")
  ".uh" (spechar--insert "ḥ")
  ".uk" (spechar--insert "ḳ")
  ".ul" (spechar--insert "ḷ")
  ".um" (spechar--insert "ṃ")
  ".un" (spechar--insert "ṇ")
  ".ur" (spechar--insert "ṛ")
  ".us" (spechar--insert "ṣ")
  ".ut" (spechar--insert "ṭ")
  ".uv" (spechar--insert "ṿ")
  ".uw" (spechar--insert "ẉ")
  ".uz" (spechar--insert "ẓ")
  ".ua" (spechar--insert "ạ")
  ".ue" (spechar--insert "ẹ")
  ".ui" (spechar--insert "ị")
  ".uo" (spechar--insert "ọ")
  ".uu" (spechar--insert "ụ")
  ".uy" (spechar--insert "ỵ")
  )

;;-- end underdot

;;-- overdot
(evil-define-key 'spechar 'global
  ".ob" (spechar--insert "ḃ")
  ".od" (spechar--insert "ḋ")
  ".oh" (spechar--insert "ḣ")
  ".ol" (spechar--insert "")
  ".om" (spechar--insert "ẛ")
  ".on" (spechar--insert "ṅ")
  ".or" (spechar--insert "ṙ")
  ".os" (spechar--insert "ṡ")
  ".ot" (spechar--insert "ṫ")
  ".ow" (spechar--insert "ẇ")
  ".oz" (spechar--insert "ż")
  ".oa" (spechar--insert "ȧ")
  ".oe" (spechar--insert "ė")
  ".oo" (spechar--insert "ȯ")
  ".oy" (spechar--insert "ẏ")
  )

;;-- end overdot

;;-- stroke
(evil-define-key 'spechar 'global
  "sd" (spechar--insert "đ")
  "sh" (spechar--insert "ħ")
  "sl" (spechar--insert "ł")
  "st" (spechar--insert "ŧ")
  "sb" (spechar--insert "ƀ")
  "sz" (spechar--insert "ƶ")
  "sg" (spechar--insert "ǥ")
  "sc" (spechar--insert "ȼ")
  "se" (spechar--insert "ɇ")
  "sj" (spechar--insert "ɉ")
  "sr" (spechar--insert "ɍ")
  "sy" (spechar--insert "ɏ")
  "sj" (spechar--insert "ɉ")
  "si" (spechar--insert "ɨ")
  "sp" (spechar--insert "ᵽ")
  "sa" (spechar--insert "ⱥ")
  "sk" (spechar--insert "ꝁ")
  "sf" (spechar--insert "ꞙ")
  "su" (spechar--insert "ꞹ")

  )

;;-- end stroke

;;-- assemble

(evil-define-key 'spechar 'global
  "-"               (spechar--insert "—")
  "b"               (spechar--insert "ß")
  (kbd "RET")       #'insert-char
  "?"               #'spechar-reminder
  )

(defun spechar-reminder ()
  (interactive)
  (message "Char Groups:\n%s"
           (string-join '("'   : Acute"
                          ",   : Cedilla"
                          "\"  : Diaeresis"
                          "`   : Grave'"
                          "~   : Tilde"
                          ".u  : Underdot"
                          ".a  : Overdot"
                          "g   : Greek Letters"
                          "m   : Math Symbols"
                          "l   : Logic Symbols"
                          "s   : Stroke"
                          "/   : Subscripts"
                          "\\  : Superscripts"
                          "^   : Carons"
                          "b   : ß (Sharp S)"
                          "RET : Insert Interactively"
                          )
                        "\n"
                        )
           )
  )

(when (fboundp 'general-insert-call)
  (define-key evil-spechar-state-map  "DEL" #'general-insert-call)
  )

;;-- end assemble

;;;###autoload (autoload 'evil-spechar-state (macroexp-file-name) nil t)
(evil-define-state spechar
  "An Insert State for characters not usually used in english"
  :tag "<ç>"
  :message "-- Chars --"
  ;; :suppress-keymap nil
  :input-method t
  )

;; TODO transient

;;-- descriptions
(when (fboundp 'faster-whichkey-add-keymap-replacement)
  (faster-whichkey-add-keymap-replacement nil spechar-acute-map
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
  (faster-whichkey-add-keymap-replacement nil spechar-cedilla-map
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
  (faster-whichkey-add-keymap-replacement nil spechar-diaeresis-map
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
  (faster-whichkey-add-keymap-replacement nil spechar-greek-map
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
  (faster-whichkey-add-keymap-replacement nil spechar-grave-map
                                          "a" "à"
                                          "e" "è"
                                          "i" "ì"
                                          "n" "ǹ"
                                          "o" "ò"
                                          "u" "ù"
                                          "w" "ẁ"
                                          "y" "ỳ"
                                          )
  (faster-whichkey-add-keymap-replacement nil spechar-logic-map
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
  (faster-whichkey-add-keymap-replacement nil spechar-math-map
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
  (faster-whichkey-add-keymap-replacement nil spechar-subscript-map
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
  (faster-whichkey-add-keymap-replacement nil spechar-superscript-map
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
  (faster-whichkey-add-keymap-replacement nil spechar-tilde-map
                                          "a" "ã"
                                          "e" "ẽ"
                                          "i" "ĩ"
                                          "n" "ñ"
                                          "o" "õ"
                                          "u" "ũ"
                                          "v" "ṽ"
                                          "y" "ỹ"
                                          )

(faster-whichkey-add-keymap-replacement nil spechar-caron-map
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

(provide 'spechar-state)
;;; spechar-state.el ends here
