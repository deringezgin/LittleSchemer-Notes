#|Derin Gezgin's Notes from the Little Schemer|#

(define println
  (lambda (s)
    (display s)
    (newline)))

(define one?
  (lambda (n)
    (cond
      ((= n 1) #t)
      (else #f))))

(define one2?
  (lambda (n)
    (= n 1)))

(define n1 '1)
(define n2 '2)

(println (one? n1))
(println (one? n2))

(newline)

(println (one2? n1))
(println (one2? n2))

(newline)