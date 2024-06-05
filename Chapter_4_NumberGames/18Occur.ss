#|Derin Gezgin's Notes from the Little Schemer|#

(define println
  (lambda (s)
    (display s)
    (newline)))

(define printList
  (lambda (l)
    (display "Current value of l --> ")
    (println l)))

(define occur
  (lambda (a lat)
    (cond
      ((null? lat) 0)
      ((eq? a (car lat)) (+ 1 (occur a (cdr lat))))
      (else (occur a (cdr lat))))))

(define look 'a)
(define l '(a b c a a d f a))
(printList l)
(display "What's the value of (occur (a l)) --> ")
(println (occur look l))


(define look 'y)
(define l '(a b c a a d f a))
(printList l)
(display "What's the value of (occur (y l)) --> ")
(println (occur look l))

(newline)