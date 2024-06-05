#|Derin Gezgin's Notes from the Little Schemer|#

(define println
  (lambda (s)
    (display s)
    (newline)))

(define eqan?
  (lambda (a b)
    (cond
      ((and (number? a) (number? b)) (= a b))
      ((or (number? a) (number? b)) #f)
      (else (eq? a b)))))

(define a '1)
(define b '2)
(println (eqan? a b))

(define a '1)
(define b '1)
(println (eqan? a b))

(define a '1)
(define b 'test)
(println (eqan? a b))

(define a 'test)
(define b 'test)
(println (eqan? a b))

(define a 'test)
(define b 'aaa)
(println (eqan? a b))

(newline)