#lang racket


(cons 3 empty)
(cons 4 (cons 3 empty))
(cons 6 (cons 4 (cons 3 empty)))

;; 6 - CREATE LIST
;Create a list of numbers of length size

(define (create-list size)
  (cond
    [(< size 1) empty]
    [else (cons size (create-list (- size 1)))]))

(create-list 5)

(cons? (cons 3 empty))
(empty? empty)
(first (create-list 4))
(rest (create-list 4))

;; 7 - LENGTH
;Create a function that returns the number of items in the list

(define (length l)
  (cond
    [(empty? l) 0]
    [else ( + 1 (length (rest l)))]))

(length (create-list 5))