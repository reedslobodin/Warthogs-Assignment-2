;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname assignment2) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(require rsound)
(define octave 0)

(define a# (+ 70 octave))
(define a (+ 69 octave))
(define g# (+ 68 octave))
(define g (+ 67 octave))
(define f# (+ 66 octave))
(define f (+ 65 octave))
(define e (+ 64 octave))
(define d# (+ 63 octave))
(define d (+ 62 octave))
(define c# (+ 61 octave))
(define c (+ 60 octave))
(define b (+ 59 octave))
(define lowa# (+ 58 octave))
(define lowa (+ 57 octave))
(define lowg# (+ 56 octave))
(define lowg (+ 55 octave))
(define lowf# (+ 54 octave))
(define lowf (+ 53 octave))



(define tempo 184)
;bpm * minutes/s = beats/s
;beats / (beats/s) = seconds
;seconds * frames/s = frames
(define (beats bt)
(* 44100(/ bt (/ tempo 60))))


  
  

;(define-struct note (pitch dur))
  

(define (play-note note-number beats)
(synth-note "vgame" 49 note-number (beats beats)))

