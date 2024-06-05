(define println
  (lambda (s)
    (display s)
    (newline)))

(define sub1
  (lambda (n)
    (- n 1)))

#|MY SOLUTION TO THE PROBLEM|#
(define o-
        (lambda (num1 num2)
          (cond
            ((zero? num2) num1)
            (else (- (sub1 num1) (sub1 num2))))))

#|BOOKS SOLUTION|#
(define o-
  (lambda (n m)
    (cond
      ((zero? m) n)
      (else (sub1 (- n (sub1 m)))))))

(newline)
(display "What's (- 14 3) --> ")
(println (o- 14 3))

(newline)
(display "What's (- 17 9) --> ")
(println (o- 17 9))

(newline)
(display "What's (- 18 25) --> ")
(println (o- 18 25))

#|
THE FIRST COMMANDMENT
(1ST REVISION)
WHEN RECURRING ON A LIST OF ATOMS 'LAT' ASK TWO QUESTIONS ABOUT IT (NULL? LAT) AND ELSE
WHEN RECURRING ON A NUMBER, N, AS TWO QUESTIONS -> (ZERO? N) AND ELSE
|#

(newline)