(define println
  (lambda (s)
    (display s)
    (newline)))

(define sub1
  (lambda (n)
    (- n 1)))

(define o>
  (lambda (a b)
    (cond
      ((zero? a) #f)
      ((zero? b) #t)
      (else (o> (sub1 a) (sub1 b)))
    )))

(display "What is (> 12 133) --> ")
(println (> 12 133))

(display "What is (> 120 11) --> ")
(println (> 120 11))

(display "What is (> 3 3) --> ")
(println (> 3 3))

(newline)