;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname assignment2) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(require rsound)
(define octave 0)



(define higha# (+ 70 octave))
(define higha (+ 69 octave))
(define highg# (+ 68 octave))
(define highg (+ 67 octave))
(define highf# (+ 66 octave))
(define highf (+ 65 octave))
(define highe (+ 64 octave))
(define highd# (+ 63 octave))
(define highd (+ 62 octave))
(define highc# (+ 61 octave))
(define highc (+ 60 octave))
(define highb (+ 59 octave))
(define lowa# (+ 58 octave))
(define lowa (+ 57 octave))
(define lowg# (+ 56 octave))
(define lowg (+ 55 octave))
(define lowf# (+ 54 octave))
(define lowf (+ 53 octave))
(define lowe (+ 52 octave))
(define lowd# (+ 51 octave))
(define lowd (+ 50 octave))
(define lowc# (+ 49 octave))
(define lowc (+ 48 octave))
(define lowb (+ 47 octave))
(define lowesta# (+ 46 octave))
(define lowesta (+ 45 octave))




(define tempo 184)
;bpm * minutes/s = beats/s
;beats / (beats/s) = seconds
;seconds * frames/s = frames
(define (beats bt)
(round(* 44100(/ bt (/ tempo 60)))))


  
  

;(define-struct note (pitch dur))

(define (16thgroup first second third fourth)
  (rs-append (play-note first 1/16)
             (play-note second 1/16)
             (play-note third 1/16)
             (play-note fourth 1/16)))
(define (8thgroup first second third fourth)
  (rs-append (play-note first 1/8)
             (play-note second 1/8)
             (play-note third 1/8)
             (play-note fourth 1/8)))
             

(define (play-note note-number beat)
(synth-note "main" 12 note-number (beats beat)))





(define song
(rs-append
 (play-note lowa 1)
 (play-note lowa 1)
 (play-note lowa 2)
 
 (silence (beats 1/2))
 (play-note lowa 1/2)
 (play-note highd 1.5)
 (play-note lowa 1/2)
 (play-note highd 1)
 
 (play-note lowa 1)
 (play-note lowa 1)
 (play-note lowa 2)
 
 (silence (beats 1/2))
 (play-note lowa 1/2)
 (play-note higha 1.5)
 (play-note lowa 1/2)
 (play-note higha 1)
 
 (play-note higha 1)
 (play-note highc 1)
 (play-note highb 1)
 (play-note highd 1)
  

 
 







