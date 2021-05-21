;;; init.el -*- lexical-binding: t; -*-

;; This file controls what Doom modules are enabled and what order they load
;; in. Remember to run 'doom sync' after modifying it!

;; NOTE Press 'SPC h d h' (or 'C-h d h' for non-vim users) to access Doom's
;;      documentation. There you'll find a "Module Index" link where you'll find
;;      a comprehensive list of Doom's modules and what flags they support.

;; NOTE Move your cursor over a module's name (or its flags) and press 'K' (or
;;      'C-c c k' for non-vim users) to view its documentation. This works on
;;      flags as well (those symbols that start with a plus).
;;
;;      Alternatively, press 'gd' (or 'C-c c d') on a module to browse its
;;      directory (for easy access to its source code).

(doom! :input
       ;;chinese
       ;;japanese
       ;;layout            ; auie,ctsrnm is the superior home row

       :completion
       (company          ; the ultimate code completion backend
        +childframe
        )
       ;; helm              ; the *other* search engine for love and life
       ;; ido               ; the other *other* search engine...
       ;; ivy               ; a search engine for love and life

       :ui
       deft              ; notational velocity for Emacs
       doom              ; what makes DOOM look the way it does
       doom-dashboard    ; a nifty splash screen for Emacs
       ;; doom-quit         ; DOOM quit-message prompts when you quit Emacs
       ;; (emoji +unicode)  ; 🙂
       ;; fill-column       ; a `fill-column' indicator
       hl-todo           ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
       hydra
       ;; indent-guides     ; highlighted indent columns
       ;; ligatures         ; ligatures and symbols to make your code pretty again
       ;; minimap           ; show a map of the code on the side
       modeline          ; snazzy, Atom-inspired modeline, plus API
       nav-flash         ; blink cursor line after big motions
       ;; neotree           ; a project drawer, like NERDTree for vim
       ophints           ; highlight the region an operation acts on
       (popup            ; tame sudden yet inevitable temporary windows
        +all             ;
        +defaults
        )
       ;; tabs              ; a tab bar for Emacs
       (treemacs         ; a project drawer, like neotree but cooler
        +lsp
        )
       ;; unicode           ; extended unicode support for various languages
       vc-gutter         ; vcs diff in the fringe
       ;; vi-tilde-fringe   ; fringe tildes to mark beyond EOB
       ;; window-select     ; visually switch windows
       ;; workspaces        ; tab emulation, persistence & separate workspaces
       zen               ; distraction-free coding or writing

       :editor
       (evil             ; come to the dark side, we have cookies
        +everywhere
        )
       file-templates    ; auto-snippets for empty files
       fold              ; (nigh) universal code folding
       ;; (format           ; automated prettiness
       ;;  +onsave
       ;;  )
       ;; god               ; run Emacs commands without modifier keys
       ;; lispy             ; vim for lisp, for people who don't like vim
       multiple-cursors  ; editing in many places at once
       ;; objed             ; text object editing for the innocent
       ;; parinfer          ; turn lisp into python, sort of
       rotate-text       ; cycle region at point between text candidates
       snippets          ; my elves. They type so I don't have to
       ;; word-wrap         ; soft wrapping with language-aware indent

       :emacs
       (dired            ; making dired pretty [functional]
        +icons
        )
       ;; electric          ; smarter, keyword-based electric-indent
       (ibuffer          ; interactive buffer management
        +icons
        )
       (undo             ; persistent, smarter undo for your inevitable mistakes
        ;; +tree
        )
       vc                ; version-control and Emacs, sitting in a tree

       :term
       eshell            ; the elisp shell that works everywhere
       ;; shell             ; simple shell REPL for Emacs
       ;; term              ; basic terminal emulator for Emacs
       ;; vterm             ; the best terminal emulation in Emacs

       :checkers
       syntax            ; tasing you for every semicolon you forget
       (spell            ; tasing you for misspelling mispelling
        ;; +flyspell
        +aspell
        ;; +hunspell
        ;; +enchant
        +everywhere
        )
       ;; grammar           ; tasing grammar mistake every you make

       :tools
       ansible
       ;; debugger          ; FIXME stepping through code, to help you add bugs
       ;; direnv
       docker
       editorconfig      ; let someone else argue about tabs vs spaces
       ;;ein               ; tame Jupyter notebooks with emacs
       (eval             ; run code, run (also, repls)
        +overlay
        )
       ;; gist              ; interacting with github gists
       (lookup           ; navigate your code and its documentation
        +dictionary
        +offline
        +docsets
        ;; +xwidget
        )
       (lsp
        +peek
        )
       (magit            ; a git porcelain for Emacs
        +forge
        )
       make              ; run make tasks from Emacs
       ;; pass              ; password manager for nerds
       pdf               ; pdf enhancements
       ;; prodigy           ; FIXME managing external services & code builders
       ;; rgb               ; creating color strings
       taskrunner        ; taskrunner for all your projects
       ;; terraform         ; infrastructure as code
       ;; tmux              ; an API for interacting with tmux
       ;; upload            ; map local to remote projects via ssh/ftp

       :os
       (:if IS-MAC
        macos            ; improve compatibility with macOS
        )
       ;; tty               ; improve the terminal Emacs experience

       :lang
       ;; agda              ; types of types of types of types...
       (cc               ; C/C++/Obj-C madness
        +lsp)
       ;; clojure           ; java with a lisp
       ;; common-lisp       ; if you've seen one lisp, you've seen them all
       ;; coq               ; proofs-as-programs
       ;; crystal           ; ruby at the speed of c
       ;; csharp            ; unity, .NET, and mono shenanigans
       data              ; config/data formats
       ;; (dart             ; paint ui and not much else
       ;;  +flutter)
       ;; elixir            ; erlang done right
       ;; elm               ; care for a cup of TEA?
       emacs-lisp        ; drown in parentheses
       ;; erlang            ; an elegant language for a more civilized age
       ;; ess               ; emacs speaks statistics
       ;; faust             ; dsp, but you get to keep your soul
       ;; fsharp            ; ML stands for Microsoft's Language
       ;; fstar             ; (dependent) types and (monadic) effects and Z3
       ;; gdscript          ; the language you waited for
       (go               ; the hipster dialect
        +lsp
        )
       ;; (haskell          ; a language that's lazier than I am
       ;;  +dante)
       ;; hy                ; readability of scheme w/ speed of python
       ;; idris             ; a language you can depend on
       (json             ; At least it ain't XML
        +lsp
        )
       ;; (java             ; the poster child for carpal tunnel syndrome
       ;;  +meghanada)
       (javascript       ; all(hope(abandon(ye(who(enter(here))))))
        +lsp
        )
       ;; julia             ; a better, faster MATLAB
       kotlin            ; a better, slicker Java(Script)
       latex             ; writing papers in Emacs has never been so fun
       ;; lean
       ;; factor
       ;; ledger            ; an accounting system in Emacs
       ;; lua               ; one-based indices? one-based indices
       (markdown         ; writing docs for people to ignore
        +grip
        )
       ;; nim               ; python + lisp at the speed of c
       ;; nix               ; I hereby declare "nix geht mehr!"
       ;; ocaml             ; an objective camel
       (org              ; organize your plain life in plain text
        ;; +brain
        +dragndrop
        ;; +gnuplot
        +hugo
        +journal
        ;; +jupyter
        +noter
        ;; +pandoc
        ;; +pomodoro
        +present
        ;; +pretty
        +roam
        )
       ;; php               ; perl's insecure younger brother
       plantuml          ; diagrams for confusing people more
       ;; purescript        ; javascript, but functional
       (python           ; beautiful is better than ugly
        ;; +conda
        ;; +cython
        +lsp
        +poetry
        +pyenv
        +pyright
        )
       ;; qt                ; the 'cutest' gui framework ever
       ;; racket            ; a DSL for DSLs
       ;; raku              ; the artist formerly known as perl6
       ;; rest              ; Emacs as a REST client
       ;; rst               ; ReST in peace
       ;; (ruby             ; 1.step {|i| p "Ruby is #{i.even? ? 'love' : 'life'}"}
       ;;  +rails
       ;;  )
       (rust             ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
        +lsp
        )
       ;; scala             ; java, but good
       ;; scheme            ; a fully conniving family of lisps
       (sh               ; she sells {ba,z,fi}sh shells on the C xor
        +lsp)
       ;; sml
       ;; solidity          ; do you need a blockchain? No.
       swift             ; who asked for emoji variables?
       ;; terra             ; Earth and Moon in alignment for performance.
       web               ; the tubes
       (yaml             ; JSON, but readable
        +lsp)

       :email
       (mu4e
        ;; +gmail
        )
       ;; notmuch
       ;; (wanderlust
       ;;  +gmail
       ;;  )

       :app
       calendar
       ;; irc               ; how neckbeards socialize
       ;; (rss              ; emacs as an RSS reader
       ;;  +org
       ;;  )
       ;; twitter           ; twitter client https://twitter.com/vnought

       :config
       literate
       (default
         +bindings
         +smartparens))

(when doom-debug-p
  (require 'benchmark-init)
  (add-hook 'doom-first-input-hook #'benchmark-init/deactivate))

;; I need this hook here to make sure my tangle runs this autoloaded function.
(add-hook 'org-babel-post-tangle-hook
          #'(lambda ()
              (let ((make-backup-files nil)
                    (last))
                (when (string-match-p "\\/\\(share\\/\\(templates\\|capture\\)\\|snippets\\)\\/"
                                      (buffer-file-name))
                  (goto-char (point-min))
                  (insert "# -*- mode: snippet -*-\n"))
                (goto-char (point-max))
                (when (equal (char-before) ?\n)
                  (delete-char -1)
                  (save-buffer)))))

;; When I'm using soft-wraps to write prose, I like to have Emacs (Evil in
;; particular) to respect my visual lines. In order to do that, I must set
;; the `evil-respect-visual-line-mode' variable before Evil is loaded.
;; Unfortunately, by the time the 'config.el' file is loaded, it is too late,
;; and that is why I have to set this variable here.
(setq evil-respect-visual-line-mode t)
