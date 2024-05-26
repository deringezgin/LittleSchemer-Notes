#| Derin Gezgin's Notes from the Little Schemer |#

(define println
  (lambda (s)
    (display s)
    (newline)))

(define print-list
  (lambda (l)
    (display "Current value of l --> ")
    (println l)))

(define print-a
  (lambda (a)
    (display "Current value of a --> ")
    (println a)))

(define multirember
  (lambda (a l)
    (cond
      ((null? l) (quote ()))
      ((eq? (car l) a) (multirember a (cdr l)))  ; This time, rather than returning (cdr l) we call the function again in order to remove the values from the rest of the list too
      (else (cons (car l) (multirember a (cdr l)))))))

(newline)
(define l '(coffee cup tea cup and hick cup))
(print-list l)
(define a 'cup)
(print-a a)
(display "What's the value of (multirember a l) --> ")
(println (multirember a l))

#|Trying the examples from the 01rember.ss|#

(newline)
(define lat '(bacon lettuce and tomato))
(define a 'bacon)
(print-list lat)
(print-a a)
(display "The value of (multirember a lat) --> ")
(println (multirember a lat))

(newline)
(define lat '(bacon lettuce and tomato))
(define a 'and)
(print-list lat)
(print-a a)
(display "The value of (multirember a lat) --> ")
(println (multirember a lat))

(newline)
(define lat '(soy sauce and tomato sauce))
(define a 'sauce)
(print-list lat)
(print-a a)
(display "The value of (multirember a lat) --> ")
(println (multirember a lat))

(newline)