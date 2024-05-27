#| Derin Gezgin's Notes from the Little Schemer |#

(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define (println s)
  (display s)
  (newline))

(define print-n
  (lambda (n)
    (display "Current value of n --> ")
    (println n)))


(newline)
(define n '14)
(display "Is 14 an atom? --> ")
(println (atom? n))

(newline)

(newline)
(define n '-3)
(display "Is -3 an atom? --> ")
(println (atom? n))
(println "Yes but we only consider positive numbers")

(newline)
(define n '3.14159)
(display "Is 3.14159 an atom? --> ")
(println (atom? n))
(println "Yes but we only consider whole numbers")

(define add1
  (lambda (n)
    (+ n 1)))

(newline)
(define n '67)
(print-n n)
(display "What's the value of (add1 n) --> ")
(println (add1 n))

(define sub1
  (lambda (n)
    (- n 1)))

(newline)
(define n '5)
(print-n 5)
(display "What's the value of (sub1 n) --> ")
(println (sub1 n))

(newline)
(define n '0)
(print-n n)
(display "What's the value of (sub1 n) --> ")
(println (sub1 n))
(println "Even though the value is -1 in practice, we only consider non-negative numbers.")

(newline)
(print-n n)
(display "What's the value of (zero? 0) --> ")
(println (zero? n))

(newline)
(define n'1492)
(print-n n)
(display "What's the value of (zero? 0) --> ")
(println (zero? n))

(newline)