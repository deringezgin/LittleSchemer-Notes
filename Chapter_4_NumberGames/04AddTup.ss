#| Derin Gezgin's Notes from the Little Schemer |#

(define println
  (lambda (s)
    (display s)
    (newline)))

(define addtup
  (lambda (nums)
    (cond
      ((null? nums) 0)
      (else (+ (car nums) (addtup (cdr nums)))))))

(define nums '(3 4 5 6))
(println (addtup nums))

(newline)