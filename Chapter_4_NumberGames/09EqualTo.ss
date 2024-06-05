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

#|Books First Solution|#
(define o2=
  (lambda (n m)
    (cond
      ((zero? m) (zero? n))
      ((zero? n) #f)
      (else (o2= (sub1 n) (sub1 m))))))

#|Books Second Solution|#
(define o>
  (lambda (a b)
    (cond
      ((zero? a) #f)
      ((zero? b) #t)
      (else (o> (sub1 a) (sub1 b))))))

(define o<
  (lambda (a b)
    (cond
      ((zero? b) #f)
      ((zero? a) #t)
      (else (o< (sub1 a) (sub1 b))))))

(define o3=
  (lambda (n m)
    (cond
      ((o> n m) #f)
      ((o< n m) #f)
      (else #t))))

(display "What is the value of (o= 3 3) --> ")
(println (o= 3 3))
(println (o2= 3 3))
(println (o3= 3 3))

(display "What is the value of (o= 5 3) --> ")
(println (o= 5 3))
(println (o2= 5 3))
(println (o3= 5 3))

(newline)