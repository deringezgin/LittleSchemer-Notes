#| Derin Gezgin's Notes from the Little Schemer |#

(define println
  (lambda (s)
    (display s)
    (newline)))

(define print-list
  (lambda (l)
    (display "Current l --> ")
    (println l)))

(define multiinsertR
  (lambda (new old l)
    (cond
      ((null? l) (quote ()))
      ((eq? (car l) old) (cons (car l) (cons new (multiinsertR new old (cdr l)))))
      (else (cons (car l) (multiinsertR new old (cdr l)))))))

(newline)
(define l '(ice cream fudge with fudge for dessert))
(define new 'topping)
(define old 'fudge)
(print-list l)
(display "Current new --> ")
(println new)
(display "Current old --> ")
(println old)
(display "What's the value of (multiinsertR new old lat) --> ")
(println (multiinsertR new old l))

(newline)
(define l '(tacos and tamales and salsa))
(define new 'jalapeno)
(define old 'and)
(print-list l)
(display "Current new --> ")
(println new)
(display "Current old --> ")
(println old)
(display "What's the value of (multiinsertR new old lat) --> ")
(println (multiinsertR new old l))

(newline)
(define l '(a b c d f g d h))
(define new 'e)
(define old 'd)
(print-list l)
(display "Current new --> ")
(println new)
(display "Current old --> ")
(println old)
(display "What's the value of (multiinsertR new old lat) --> ")
(println (multiinsertR new old l))

(newline)