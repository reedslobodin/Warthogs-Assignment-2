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

;catherine

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







; ONE PARAGRAPH WRITE-UP
; Throughout designing our program, we would have many ideas but eventually we would all end up pursuing
; our own ways to process the notes in the song in order to get them to play through the code. One idea
; that seemed to stick was to define each note and then append the notes in each measure in order to play
; them. We would also develop a function tat converted seconds into beats in order to make it easier for us
; to define lengths of notes and to check our work. The way we would check our work was to make sure the beats
; added up to four in every measure. We would then develop a play-note function to play our notes all based
; around the sound made from the (synth-note "main" 12 note-number (beats beat))) sound using our note-numbers
; based on the notes we had defined earlier basing them on additions of our octave, or 0. We would then also use
; our seconds to beats function inside of this to show the length of our note. We would then append these notes to
; make the measures and eventually build all of those together to create the song. That would be the way I personally
; went about the process to develop my code. However, I know that others would use lines or spaces to define what
; notes were being played and they would also use seconds to define their note length. We also had some ideas to
; build on this program, such as interactive aspects you could add to this program. Such as adding key presses
; that could pause the song, play the song faster, slower, or at a different volume. Currently the program is split
; into five parts, part 1 being founding definitions to use in the next four parts, which were then the parts of the
; song we had split up and assigned each team member to write the code for. Each part was 2 staffs, with the exception
; of the last staff which had some extra measures. We hope you enjoy our coded version of Viola 2!
