#!/usr/bin/env sh
":"; exec emacs --quick --script "$0" -- "$@" # -*- mode: emacs-lisp; lexical-binding: t; -*-

(load "~/.config/emacs/early-init.el" nil t)

(load "~/.config/emacs/core/core-cli.el" nil t)
(require 'core-cli)
(doom-initialize)

(defvar htmlize-theme 'doom-one-light)
(load-theme htmlize-theme t)

(find-file "~/.config/doom/config.org")

(setq org-html-htmlize-output-type 'css
      org-html-head-include-default-style nil
      org-html-doctype "html5"
      org-html-html5-fancy t
      org-confirm-babel-evaluate nil
      plantuml-jar-path "/tmp/plantuml.jar"
      org-plantuml-jar-path plantuml-jar-path)

(add-to-list 'org-src-lang-modes '("plantuml" . plantuml))
(org-babel-do-load-languages 'org-babel-load-languages '((plantuml . t)))

(load "/tmp/htmlize.el")
(require 'htmlize)

(org-html-export-to-html)
