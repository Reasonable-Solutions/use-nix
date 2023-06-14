#lang slideshow ; or slideshow/widescreen
(require
           racket/runtime-path
           rsvg
           pict
           
)

(define-runtime-path nix.svg "assets/nix.svg")
(define nix-logo (svg-file->pict nix.svg 1))


(define (ltt body-text)
  (para #:align 'left (tt body-text)))

(slide
 #:title "Consider Nix"
 nix-logo
 (t "Carl.Hedgren@nav.no"))

 (slide
  #:title "About me")

 (slide
  #:title "but what is Nix")

 (slide (t "The mess we are in in")
 'next
 (ltt "> git clone my-cool-project")
 'next
 (ltt "> less README"))

(slide
 (t "foooo")
 (item "bar")
 (item "baz"))
 
    