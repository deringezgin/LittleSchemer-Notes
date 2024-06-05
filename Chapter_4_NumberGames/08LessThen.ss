#| Derin Gezgin's Notes from the Little Schemer |#

(define println
  (lambda (s)
    (display s)
    (newline)))

(define sub1
  (lambda (n)
    (- n 1)))

(define o<
  (lambda (a b)
    (cond
      ((zero? b) #f)
      ((zero? a) #t)
      (else (o< (sub1 a) (sub1 b))))))

(display "What is (< 4 6) --> ")
(println (< 4 6))

(display "What is (< 8 3) --> ")
(println (< 8 3))

(display "What is (< 6 6) --> ")
(println (< 6 6))

(newline)