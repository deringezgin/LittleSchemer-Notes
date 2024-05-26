#| Derin Gezgin's Notes from the Little Schemer |#

(define println
  (lambda (s)
    (display s)
    (newline)))

(define print-list
  (lambda (l)
    (display "Current value of l --> ")
    (println l)))

(define subst
  (lambda (old new l)
    (cond
      ((null? l) (quote ()))
      ((eq? old (car l)) (cons new (cdr l)))
      (else (cons (car l) (subst old new (cdr l)))))))

(define l '(ice cream with fudge for dessert))
(print-list l)
(define old 'fudge)
(define new 'topping)
(display "Current old --> ")
(println old)
(display "Current new --> ")
(println new)
(display "What's the value of (subst old new l) --> ")
(println (subst old new l))

(newline)