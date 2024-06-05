#|Derin Gezgin's Notes from the Little Schemer|#

(define println
  (lambda (s)
    (display s)
    (newline)))

(define printList
  (lambda (l)
    (display "What's the current value of l --> ")
    (println l)))

(define all-nums
  (lambda (l)
    (cond
      ((null? l) (quote ()))
      ((number? (car l)) (cons (car l) (all-nums (cdr l))))
      (else (all-nums (cdr l))))))

(define l '(5 pears 6 prunes 9 dates))
(printList l)
(display "What's the value of (all-nums l) --> ")
(println (all-nums l))

(newline)