#|Derin Gezgin's Notes from the Little Schemer|#

(define println
  (lambda (s)
    (display s)
    (newline)))

(define printList
  (lambda (l)
    (display "Current value of l --> ")
    (println l)))

(define sub1
  (lambda (n)
    (- n 1)))

(define rempick
  (lambda (ind l)
    (cond
      ((zero? (sub1 ind)) (cdr l))
      (else (cons (car l) (rempick (sub1 ind) (cdr l)))))))

(define lat '(hotdogs with hot mustard))
(printList lat)
(display "What is the value of (rempick 3 l) --> ")
(println (rempick 3 lat))

(newline)