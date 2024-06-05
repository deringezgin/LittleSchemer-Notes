#| Derin Gezgin's Notes from the Little Schemer |#

(define add1
  (lambda (n)
    (+ n 1)))

(define sub1
  (lambda (n)
    (- n 1)))

(define println
  (lambda (s)
    (display s)
    (newline)))

#|This is my solution|#
(define o+
        (lambda (a b)
          (cond
            ((zero? b) a)
            (else (+ (add1 a) (sub1 b))))))

#|This is the solution of the book|#
;(define +
;        (lambda (n m)
;          (cond
;            ((zero? m) n)
;            (else (add1 (+ n (sub1 m)))))))

(newline)
(display "What's (+ 46 12) --> ")
(println (o+ 46 12))

(newline)
(display "What's the value of (+ 1 34) --> ")
(println (o+ 1 34))

(newline)
(display "What's the value of (+ 1 4) --> ")
(println (o+ 1 4))

(newline)