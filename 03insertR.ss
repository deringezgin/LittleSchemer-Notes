#| Derin Gezgin's Notes from the Little Schemer |#

(define println
  (lambda (s)
    (display s)
    (newline)))

(define print-list
  (lambda (l)
    (display "Current l --> ")
    (println l)))

(define insertR
  (lambda (new old l)
    (cond
      ((null? l) (quote ()))
      ((eq? (car l) old) (cons (car l) (cons new (cdr l))))
      (else (cons (car l) (insertR new old (cdr l)))))))

(newline)

(define l '(ice cream with fudge for dessert))
(define new 'topping)
(define old 'fudge)
(print-list l)
(display "Current new --> ")
(println new)
(display "Current old --> ")
(println old)

(println (insertR new old l))
