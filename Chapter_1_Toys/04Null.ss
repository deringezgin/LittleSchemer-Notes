#| Derin Gezgin's Notes from the Little Schemer |#

#|Null?|#

#|
THE LAW of NULL?
The primitve null? is defined only for lists
|#

(define (println s)
  (display s)
  (newline))

(define (print-list l)
  (display "Current l --> ")
  (println l))

(define l '())
(print-list l)
(display "Is it true that the list l is the null list? --> ")
(println (null? l))
(println "It's true because it's a list composed of zero S-Expressions")

(newline)
(display "What's (null? (quote())) --> ")
(println (null? (quote ())))
(println "It's true because (quote()) is for null lists.")

(newline)
(define l '(a b c))
(print-list l)
(display "Is (null? l) true or false? --> ")
(println (null? l))
(println "It's false as it's a non-empty list")

(newline)
(define l 'spaghetti)
(print-list l)
(println "What's (null? l) ? --> No answer.")
(println "You cannot ask null? of an atom.")

(newline)