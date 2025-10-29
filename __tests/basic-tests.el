;;; basic-tests.el -*- lexical-binding: t; no-byte-compile: t; -*-
(require 'buttercup)
(require 'evil-states-plus)

(describe "sanity"
  ;; Specs:
  (it "is a sanity test" (expect t :to-be (not nil)))
  (it "is loaded"        (expect (featurep 'evil-states-plus) :to-be t))
)
