#| Derin Gezgin's Notes from the Little Schemer |#

(define println
  (lambda (s)
    (display s)
    (newline)))

(define sub1
  (lambda (n)
    (- n 1)))

(define x
  (lambda (a b)
    (cond
      ((zero? b) 0)
      (else (+ a (x a (sub1 b)))))))

(define expo
  (lambda (a b)
    (cond
      ((zero? b) 1)
      (else (x a (expo a (sub1 b)))))))

(display "What's the value of (expo 1 1) --> ")
(println (expo 1 1))

(display "What's the value of (expo 2 3) --> ")
(println (expo 2 3))

(display "What's the value of (expo 5 3) --> ")
(println (expo 5 3))

(newline)