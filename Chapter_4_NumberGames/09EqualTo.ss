#| Derin Gezgin's Notes from the Little Schemer |#

(define println
  (lambda (s)
    (display s)
    (newline)))

(define sub1
  (lambda (n)
    (- n 1)))

#|MY SOLUTION FOR THE EQUAL FUNCTION|#
(define o=
  (lambda (a b)
    (cond
      ((and (zero? a) (zero? b)) #t)
      ((or (zero? a) (zero? b)) #f)
      (else (o= (sub1 a) (sub1 b))))))

(display "What is the value of (o= 3 3) --> ")
(println (o= 3 3))

(display "What is the value of (o= 5 3) --> ")
(println (o= 5 3))

(newline)