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
(define lowestg# (+ 44 octave))
(define lowestg (+ 43 octave))





(define tempo 130)
;bpm * minutes/s = beats/s
;beats / (beats/s) = seconds
;seconds * frames/s = frames
(define (beats bt)
(round(* 44100(/ bt (/ tempo 60)))))


  
  (define (play-note note-number beat)
(synth-note "main" 12 note-number (beats beat)))

;(define-struct note (pitch dur))

(define (16thgroup first second third fourth)
  (rs-append (play-note first 1/4)
             (play-note second 1/4)
             (play-note third 1/4)
             (play-note fourth 1/4)))
(define (8thgroup first second third fourth)
  (rs-append (play-note first 1/2)
             (play-note second 1/2)
             (play-note third 1/2)
             (play-note fourth 1/2)))
             
; PART 1: CHARSKIE


(define measure1
  (silence (beats 0.5)))

(define measure2
  (rs-append
   (play-note highb 1)
   (play-note lowg 1)
   (play-note highc 1.5)
   (play-note highb 0.5)))

(define measure3
  (rs-append
   (play-note lowa 1)
   (play-note highb 1)
   (play-note highb 1)
   (play-note lowa 0.5)
   (silence (beats 0.5))))

(define measure4
  (rs-append
   (play-note lowe 2)
   (play-note lowd 1.5)
   (play-note lowc# 0.5)))

(define measure5
  (rs-append
   (play-note lowd 2)
   (play-note lowd 0.5)
   (play-note lowf 0.5)
   (play-note lowb 0.5)
   (silence (beats 0.5))))

(define measure6
  (rs-append
   (silence (beats 4))))

(define measure7
  (rs-append
   (play-note lowa 1)
   (play-note highc 0.5)
   (play-note lowb 0.25)
   (play-note lowa 0.25)
   (play-note highf 1)
   (play-note highg 0.5)
   (silence (beats 0.5))))

(define measure8
  (rs-append
   (silence (beats 2))
   (play-note lowg 2)))

(define measure9
  (rs-append
   (play-note lowg 1)
   (play-note lowf 1)
   (play-note lowg 1)
   (silence (beats 1))))

(define measure10
  (rs-append
   (silence (beats 2))
   (play-note lowg 2)))
   
(define measure11
  (rs-append
   (play-note lowd 1)
   (play-note lowc 1)
   (play-note lowb 1)
   (silence (beats 0.5))
   (play-note lowestg 0.5)))

(define measure12
  (rs-append
   (play-note lowd 1)
   (play-note lowg 1)
   (play-note lowg 1)
   (play-note lowf 0.5)
   (play-note lowe 0.5)))

(define measure13
  (rs-append
   (play-note lowd 0.5)
   (play-note lowd# 0.5)
   (play-note lowe 0.5)
   (play-note lowb 0.5)
   (play-note lowd 1)
   (play-note lowc 0.5)
   (play-note lowb 0.5)))

(define measure14
  (rs-append
   (play-note lowestg 1)
   (silence (beats 1))
   (silence (beats 0.5))
   (play-note lowg# 0.5)
   (play-note lowa 0.5)
   (play-note lowe 0.5)))

(define measure15
  (rs-append
   (play-note lowg 1)
   (play-note lowf 0.5)
   (silence (beats 0.5))
   (silence (beats 0.5))
   (play-note lowf 0.5)
   (play-note lowg 0.5)
   (play-note lowd# 0.5)))

(define measure16
  (rs-append
   (play-note lowf 0.5)
   (play-note lowe 0.5)
   (silence (beats 0.5))
   (play-note highb 0.5)
   (play-note lowa 1.5)
   (play-note lowg# 0.5)))

(define part1
  (rs-append
   measure1
   measure2
   measure3
   measure4
   measure5
   measure6
   measure7
   measure8
   measure9
   measure10
   measure11
   measure12
   measure13
   measure14
   measure15
   measure16))





; PART 3: REED


(define part3
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
 (play-note lowesta 1/2)
 (play-note lowa 1.5)
 (play-note lowesta 1/2)
 (play-note lowa 1)
 
 (play-note lowa 1)
 (play-note highc 1)
 (play-note highb 1)
 (play-note highd 1)

 (play-note highd .75)
 (play-note highf# .25)
 (play-note highe .5)
 (play-note highd .25)
 (play-note highc# .25)
 (play-note highd 1)
 (silence (beats 1))

 (play-note lowd 1)
 (play-note lowd# 1)
 (play-note lowe 1)
 (play-note lowf 1)
  
 (play-note lowf# .75)
 (play-note lowa .25)
 (play-note lowg .5)
 (play-note lowf# .25)
 (play-note lowe .25)
 (play-note lowd .5)
 (silence (beats 1.5))

 (play-note lowa .5)
 (play-note lowa .5)
 (play-note lowa .5)
 (silence (beats .5))
 (play-note lowa .5)
 (play-note lowa .5)
 (play-note lowa .5)
 (silence (beats .5))

 
 (silence (beats .5))
 (play-note highb .5)
 (silence (beats .5))
 (play-note highb .5)
 (play-note lowe 1)
 (16thgroup highd highc# highb lowa)

 (16thgroup lowg# lowa lowg# lowa)
 (16thgroup lowg# lowa highb lowg)
 (16thgroup lowf lowf# lowf lowf#)
 (16thgroup lowf lowf# lowa lowf#)

 (16thgroup lowd# lowe lowg lowe)
 (16thgroup lowe lowd lowd lowc#)
 (play-note lowd 2)))
 
 
 
(define quartet
  (rs-append
   part1
   part3))

(play quartet) 







