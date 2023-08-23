#lang slideshow ; or slideshow/widescreen

(require racket/runtime-path
         rsvg
         pict)

(define-runtime-path nix.svg "assets/nix.svg")
(define-runtime-path nais.svg "assets/nais.svg")
(define-runtime-path nixos.svg "assets/nixos.svg")
(define-runtime-path ponysay.png "assets/ponysay.png")

(define nix-logo (svg-file->pict nix.svg 1))
(define nais-logo (svg-file->pict nais.svg 1))
(define nix-trinity-meme (svg-file->pict nixos.svg 0.15))
(define ponysay (bitmap ponysay.png))

; this should be some nice nais colored top bar with a logo
(define top-bar 5)
; and a nice bottom bar
(define bottom-bar 5)


(define (ltt body-text)
  (para #:align 'left (tt body-text)))

(slide #:title "11:15 - Teknisk demo: Bruk nix, oppgrader dine problemer"
       nix-logo
       (t "Carl Hedgren")
       ) 

(slide #:title "About me"
       (t "Nix enjoyer since 2016")
       nais-logo
       (t "Carl.Hedgren@nav.no")
       (t "Works on the nais-frontend team"))

(slide #:title "A goal"
       (t "I would like for you to try out nix"))

(slide #:title "An experience report"
       (t "Not one broken upgrade since 2016")
       'next 
       (t "Bare metal servers in a data center. It was very cattle"))

(slide #:title "What is Nix"
       (t "A package manager?")
       'next
       (t "A language that looks like json with functions and comments?"))

(slide (t "All and none of the above")
         nix-trinity-meme)

(slide #:title  "A community?"
 (t "nixpkgs: Half a million commits, over 5000 contributors, 10k forks")
 (t "over 80k packages, similar to aur, twice the size of debian"))

(slide #:title "The value proposition")

(slide (t "Always working development environment")
       (t "How much work should that be?")

(slide (t "Polyglot builds")
       (t "if you can build it, you can build it with nix"))

(slide (t "Baked in CI")
       (t "The same environment in CI and locally")
       (ltt  "$ git commit -m \"ci please work!!!\""))

(slide (t "The mess we are in in")
       'next
       (ltt "> git clone my-cool-project")
       'next
       (ltt "> less README")
       'next
       (ltt "> make"))
  
(slide #:title "npx but for everything"
        (scale ponysay 0.8))
       
(slide #:title "nvm but for everything"
       (ltt "NIX-DEMO >nix-shell -p openjdk17")
       (ltt "nix:zulu17.34.19) NIX-DEMO > "))

(slide
       ;; this guy here should use vscode
       (t "A demo of nix develop and a flake"))
       ;; Kotlin
       ;; go
       ;; haskell
       ;; node or somesuch


(slide #:title "Which parts are valuable?"
       'next
       (t "Providing developer environments :heavy-checkmark:")  
       'next
       (t "ephemeral tooling :heavy-checkmark")
       'next
       (t "installing packages :heavy-checkmark")
       'next
       (t "build"))

(slide #:title "Not the builds?!?"
       (t "it depends")
       'next
       (t "you already know how to build your project")
       'next
       (t "incremental builds > reproducible builds, for developers")
       'next 
       (t "you should still be able to reproduce a build!"))

(slide #:title "resources"
       (t "nix.dev")
       (t "")
       )
