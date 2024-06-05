#| Derin Gezgin's Notes from the Little Schemer |#

(define println
  (lambda (s)
    (display s)
    (newline)))

(define sub1
  (lambda (n)
    (- n 1)))

(define add1
  (lambda (n)
    (+ n 1)))

(define o<
  (lambda (a b)
    (cond
      ((zero? b) #f)
      ((zero? a) #t)
      (else (o< (sub1 a) (sub1 b))))))

(define division
  (lambda (n m)
    (cond
      ((o< n m) 0)
      (else (add1 (division (- n m) m))))))

(display "What is (division 15 4) --> ")
(println (division 15 4))

(newline)