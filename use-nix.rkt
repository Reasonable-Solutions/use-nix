#lang slideshow ; or slideshow/widescreen

(require racket/runtime-path
         rsvg
         pict)

(define-runtime-path nix.svg "assets/nix.svg")
(define-runtime-path nais.svg "assets/nais.svg")

(define nix-logo (svg-file->pict nix.svg 1))
(define nais-logo (svg-file->pict nais.svg 1))

; this should be some nice nais colored top bar with a logo
(define top-bar 5)

(define (ltt body-text)
  (para #:align 'left (tt body-text)))

(slide #:title "Consider Nix" nix-logo nais-logo (t "Carl.Hedgren@nav.no"))

(slide #:title "About me" (t "Nix enjoyer since 2016") (t "Works on the nais-frontend team"))

(slide #:title "What is Nix")

(slide (t "A package manager?"))

(slide (t "A language?"))

(slide (t "All of the above, actually"))

(slide #:title "The value proposition")

(slide (t "Always working development environment"))

(slide (t "Polyglot builds")
       (t "if you can build it, you can build it with nix*"))

(slide (t "Baked in CI")
       (t "The same environment in CI and locally"))

(slide (t "The mess we are in in")
       'next
       (ltt "> git clone my-cool-project")
       'next
       (ltt "> less README"))

(slide (t "A demo of Nix run")
       'next
       (t "A demo of Nix profile install")
       'next
       (t "A demo of Nix develop")
       'next
       (t "A demo of nix develop and a flake")
       'next
       (t "A demo of nix build, docker, artifact etc"))