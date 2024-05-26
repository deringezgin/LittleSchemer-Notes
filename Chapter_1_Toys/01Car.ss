#| Derin Gezgin's Notes from the Little Schemer |#

#|Car|#

#|
THE LAW of CAR
The primitve car is defined only for non-empty lists.
|#

#|Helper function to keep track of the l|#
(define (print-pair l)
  (display "Current l --> ")
  (println l))  ; This adds a newline after printing the pair

#|Helper function to print a text to a new line|#
(define (println s)
  (display s)
  (newline))

(newline)
(define l '(a b c))
(print-pair l)
(display "What's the car (first element) of l? --> ")
(println (car l))

(newline)
(define l '((a b c) x y z))
(print-pair l)
(display "What's the car (first element) of l? --> ")
(println (car l))

(newline)
(define l 'hotdog)
(print-pair l)
(println "What;s the car of l?")
(println "This is an invalid question. You can't ask car for a atom as it's not a pair.")

(newline)
(define l '())
(print-pair l)
(println "What's the car of l?")
(println "This is an invalid question. You can't ask car for an empty list")

(newline)
(define l '(((hotdogs)) (and) (pickle) relish))
(print-pair l)
(display "What's the car (first element) of l? --> ")
(println (car l))

(newline)
(display "What's the (car (car l)) of l --> ")
(println (car (car l)))
