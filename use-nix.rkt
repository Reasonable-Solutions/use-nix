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
(define nix-trinity-meme (svg-file->pict nixos.svg 0.2))
(define ponysay (bitmap ponysay.png))

; this should be some nice nais colored top bar with a logo
(define top-bar 5)
; and a nice bottom bar
(define bottom-bar 5)


(define (ltt body-text)
  (para #:align 'left (tt body-text)))

(slide #:title "Consider Nix" nix-logo) 

(slide #:title "About me"
       (t "Nix enjoyer since 2016")
       nais-logo
       (t "Carl.Hedgren@nav.no")
       (t "Works on the nais-frontend team"))

(slide #:title "What is Nix")

(slide (t "A package manager?"))

(slide (t "A language?"))

(slide (t "All of the above, actually")
         nix-trinity-meme)

(slide #:title "The value proposition")

(slide (t "Always working development environment"))

(slide (t "Polyglot builds")
       (t "if you can build it, you can build it with nix"))

(slide (t "Baked in CI")
       (t "The same environment in CI and locally"))

(slide (t "The mess we are in in")
       'next
       (ltt "> git clone my-cool-project")
       'next
       (ltt "> less README"))

(slide #:title "npx but for everything"
        (scale ponysay 0.8))
       
(slide (t "nvm but for everything")
       (ltt "NIX-DEMO >nix develop nixpkgs#openjdk17")
       (ltt "nix:zulu17.34.19) NIX-DEMO > "))

(slide
       (t "A demo of nix develop and a flake")
       'next
       (t "A demo of nix build, docker, artifact etc"))


(slide #:title "Which parts are valuable?"
       'next
       
       (t "Providing developer environments :heavy-checkmark:")
       
       'next
       (t "ephemeral tooling :heavy-checkmark")
       'next
       (t "installing packages :heavy-checkmark")
       'next
       (t "build :red-cross:"))

(slide #:title "Not the builds?!?"
       (t "it depends")
       'next
       (t "you already know how to build your project")
       'next
       (t "incremental builds > reproducible builds, for developers")
       (t "you should still be able to reproduce a build!"))