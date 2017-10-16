;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Assignment2) (read-case-sensitive #t) (teachpacks ((lib "batch-io.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "batch-io.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;Assignment 2
(require rsound)

;We wish to reduce redundancy by creating
;a new function over synth-note
;(define (tone-maker location step duration)...)
;Where...
;location is a string of either "line" or "space"
;step is the number of lines or spaces away from Middle C
;duration is a measure of time in seconds

(define l "line")
(define s "space")

;Silence in frames -> Silence in seconds
(define (sil x)
  (silence (* 48000 x)))

;original is midi-note Middle C (AKA 60)
(define original 60)

;family is the family input from synth-note
;spec is the specification input from synth-note
(define family "main")
(define spec 10)

(define (tm loc step dur)
  (cond
    [(and (string=? loc s) (negative? step))
          (synth-note family spec (+ original (+ (* 2 step) 1)) (* 48000 dur))]  
    [(string=? loc s)
          (synth-note family spec (+ original (- (* 2 step) 1)) (* 48000 dur))]
    [(string=? loc l)
          (synth-note family spec (+ original (* 2 step)) (* 48000 dur))]
    ))

;;Testing
(check-expect (tm l -2 1) (synth-note "main" 10 56 48000))
(check-expect (tm l 2 1) (synth-note "main" 10 64 48000))
(check-expect (tm s 2 1) (synth-note "main" 10 63 48000))
(check-expect (tm s -1 1) (synth-note "main" 10 59 48000))

;Sheet Music --> DrRacket rsound
;Beginning Measure = 17
;Ending Measure = 31

;MEASURE 17
(define m17 (rs-append
            (tm s 3 1)
            (sil 1)
            (tm s 3 1)
            (sil 1)
             ))
;MEASURE 18
(define m18 (rs-append
            (sil .5)
            (tm s -1 .5)
            (tm l 0 .5) 
            (tm l 0 .5) 
            (tm s 1 .5)
            (tm s 1 .5) 
            (tm l 1 .5)
            (tm l 1 .5)
            ))
;MEASURE 19
(define m19 (rs-append
            (tm s 2 .5)
            (tm l 3 .5)
            (tm s 3 .5)
            (tm l 2 .5)
            (tm s 2 .5)
            (tm s 4 .5)
            (tm l 3 .5)
            (tm s 3 .5)
            ))
;MEASURE 20
(define m20 (rs-append
            (tm l 2 1)
            (sil 1)
            (sil 1/4)
            (tm l 3 1/3)
            (tm s 3 1/3)
            (tm l 2 1/3)
            ))
;MEASURE 21
(define m21 (rs-append
            (tm s 2 .25)
            (tm l 2 .25)
            (tm s 3 .25)
            (tm l 3 .25)
            (tm s 2 1)
            (tm l 1 1)
            (tm s -2 1)
            ))
;MEASURE 22
(define m22 (rs-append
            (tm l 2 2)
            (sil 1)
            (sil .5)
            (tm s -2 .5)
            ))
;MEASURE 23
(define m23 (rs-append
            (tm l 2 2)
            (tm l 2 .5)
            (tm l 1 1)
            (tm s 2 .5) 
            ))
;MEASURE 24
(define m24 (rs-append
            (tm l 2 .5)
            (tm l 1 1)
            (tm s 2 .5)
            (tm l 2 2)
            ))
;MEASURE 25
(define m25 (rs-append
            (tm l 2 1)
            (tm l 2 .25)
            (tm s 2 .25)
            (tm l 1 .25)
            (tm s 1 .25)
            (tm l 0 1)
            (sil .5)
            (tm l -1 .5)
            ))
;MEASURE 26
(define m26 (rs-append
             (tm s 2 1)
             (tm s 2 1)
             (tm s 2 .25)
             (tm l 1 .25)
             (tm s 2 .25)
             (tm l 1 .25)
             (tm s 2 .5)
             (tm s 2 .5)
             ))
;MEASURE 27
(define m27 (rs-append
             (tm s 3 1.5)
             (tm s 2 .5)
             (tm s 3 1.5)
             (tm s 2 .5)
             ))
;MEASURE 28
(define m28 (rs-append
             (tm l 1 1)
             (tm l 1 1)
             (tm l 1 .25)
             (tm s 1 .25)
             (tm l 1 .25)
             (tm s 1 .25)
             (tm l 1 .5)
             (tm l 1 .5)
             ))
;MEASURE 29
(define m29 (rs-append
             (tm l 2 1.5)
             (tm l 1 .5)
             (tm l 2 1.5)
             (tm l 1 .5)
             ))
;MEASURE 30
(define m30 (rs-append
             (tm s 1 1)
             (tm s 1 1)
             (tm l 1 1)
             (tm l 1 1)
             ))
;MEASURE 31
(define m31 (rs-append
             (tm s 2 1)
             (tm l 2 .25)
             (tm s 3 .25)
             (tm l 3 .25)
             (tm l 2 .25)
             (tm s 2 1)
             (tm l 1 .5 )
             (sil .5)
             ))


(define part2 (rs-append m17 m18 m19 m20 m21 m22 m23 m24
                 m25 m26 m27 m28 m29 m30 m31))
