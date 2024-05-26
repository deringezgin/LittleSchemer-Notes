#| Derin Gezgin's Notes from the Little Schemer |#

(define println
  (lambda (s)
    (display s)
    (newline)))

(define print-list
  (lambda (l)
    (display "Current value of l --> ")
    (println l)))

(define multisubst
  (lambda (old new l)
    (cond
      ((null? l) (quote ()))
      ((eq? (car l) old) (cons new (multisubst old new (cdr l))))
      (else (cons (car l) (multisubst old new (cdr l)))))))

(define l '(test test not not test not test not))
(print-list l)
(define old 'not)
(define new 'test)
(display "What's the value of (multisubst old new l) --> ")
(println (multisubst old new l))

(newline)