#| Derin Gezgin's Notes from the Little Schemer |#

(define println
  (lambda (s)
    (display s)
    (newline)))

(define print-list
  (lambda (l)
    (display "Current value of l --> ")
    (println l)))

(define subst2
  (lambda (new o1 o2 l)
    (cond
      ((null? l) (quote ()))
      ((or (eq? (car l) o1) (eq? (car l) o2)) (cons new (cdr l)))  ; If it matches with either of the old targets, replace it
      (else (cons (car l) (subst2 new o1 o2 (cdr l)))))))  ; If there's no match, continue recursively

(define l '(banana ice cream with chocolate topping))
(print-list l)
(define new 'vanilla)
(define o1 'chocolate)
(define o2 'banana)
(display "Current new --> ")
(println new)
(display "Current o1 --> ")
(println o1)
(display "Current o2 --> ")
(println o2)
(display "What's the value of (subst2 new o1 o2 l) --> ")
(println (subst2 new o1 o2 l))

(newline)