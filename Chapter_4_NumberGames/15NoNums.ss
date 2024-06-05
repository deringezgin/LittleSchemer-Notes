#|Derin Gezgin's Notes from the Little Schemer|#

(define println
  (lambda (s)
    (display s)
    (newline)))

(define printList
  (lambda (l)
    (display "Current value of l --> ")
    (println l)))

(define no-nums
  (lambda (l)
    (cond
      ((null? l) (quote ()))
      ((number? (car l)) (no-nums (cdr l)))
      (else (cons (car l) (no-nums (cdr l)))))))

(define l '(5 pears 6 prunes 9 dates))
(printList l)
(display "What's the value of (no-nums l) --> ")
(println (no-nums l))
