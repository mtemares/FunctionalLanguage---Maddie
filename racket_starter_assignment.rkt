;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname racket_starter_assignment) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;;1 - TO CELCIUS
;Function 0: Convert a temperature from farenheit to celcius

;; to-celcius : number -> number

;; Input: a number, temperature

;; Output: temperature, converted to celcius 


(define (to-celcius n) ( / (- n 32) 1.8))

(check-expect (to-celcius 32) 0)
(check-expect (to-celcius 86) 30)
(check-expect (to-celcius 5) -15)



;; 2 - IS LEAP YEAR
;Function 1: Determine if a given year is a leap year (refer to this).

;; is-leap-year : number -> boolean

;; Input: a non-negative number, year

;; Output: boolean value representing whether year is a leap year


(define (by4 n) (equal? (remainder n 4) 0))

(define (by100 n) (equal? (remainder n 100) 0))

(define (by400 n) (equal? (remainder n 400) 0))

(define (is-leap-year n) (cond
                           [(and (by4 n) (by400 n)) #t]
                           [(and (by4 n) (not (by100 n))) #t]
                           [else #f]
                           ))
                             

(check-expect (is-leap-year 2016) true)
(check-expect (is-leap-year 2000) true)
(check-expect (is-leap-year 2015) false)
(check-expect (is-leap-year 1900) false)
(check-expect (is-leap-year 1700) false)


;;3 - COUNTDOWN
;Function 2: Output a string to represent a countdown from some value

;; countdown : number -> String

;; Input: a non-negative number, n

;; Output: string value that counts down from n to 0, where 0 is represented ;; by Blastoff!

(define (countdown num)
  (cond
    [(<= num 0) "Blastoff!"]
    [else (string-append (number->string num) " " (countdown ( - num 1)))]))


(check-expect (countdown 10) "10 9 8 7 6 5 4 3 2 1 Blastoff!")
(check-expect (countdown 2) "2 1 Blastoff!")
(check-expect (countdown 0) "Blastoff!")
(check-expect (countdown -3) "Blastoff!")


;;4 - SUMMATION

(define (summation num)
  (cond
    [(= num 0) 0]
    [else (+ num (summation (- num 1)))]))


(check-expect (summation 4) 10)

;;5 - NUM DIGITS
(define (num-digits number)
  (cond
   [(< number 10) 1]
   [else (+ 1 (num-digits (quotient number 10)))]))


(check-expect (num-digits 8563567) 7)
(check-expect (num-digits 0) 1)
(check-expect (num-digits 247) 3)

