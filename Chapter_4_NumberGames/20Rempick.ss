#|Derin Gezgin's Notes from the Little Schemer|#

(define println
  (lambda (s)
    (display s)
    (newline)))

(define one?
  (lambda (n)
    (= n 1)))

(define printList
  (lambda (l)
    (display "Current value of l --> ")
    (println l)))

(define sub1
  (lambda (n)
    (- n 1)))

(define rempick
  (lambda (ind lat)
    (cond
      ((one? ind) (cdr lat))
      (else (cons (car lat) (rempick (sub1 ind) (cdr lat)))))))

(define n '3)
(define l '(lemon meringue salty pie))
(printList l)
(display "What's the value of (rempick 3 l) --> ")
(println (rempick n l))

(newline)