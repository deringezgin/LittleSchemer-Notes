#| Derin Gezgin's Notes from the Little Schemer |#

#|Eq?|#

#|
THE LAW of EQ?
The primitve eq? takes two arguments.
Each must be a non-numeric atom
|#

(define (println l)
  (display l)
  (newline))

(define a1 'Harry)
(define a2 'Harry)
(display "Current a1 --> ")
(println a1)
(display "Current a2 --> ")
(println a2)
(display "(eq? a1 a2) --> ")
(println (eq? a1 a2))

(newline)
(define a1 'margarine)
(define a2 'butter)
(display "Current a1 --> ")
(println a1)
(display "Current a2 --> ")
(println a2)
(display "(eq? a1 a2) --> ")
(println (eq? a1 a2))

(newline)
(println "eq? takes two arguments.")
(println "Both of them must be non-numeric atoms.")

(newline)
(define l1 '())
(define l2 '(strawberry))
(display "Current l1 --> ")
(println a1)
(display "Current l2 --> ")
(println a2)
(display "(eq? l1 l2) --> ")
(println "There won't be any answer as l1 and l2 are both lists")

(newline)
(define a1 '6)
(define a2 '7)
(display "Current a1 --> ")
(println a1)
(display "Current a2 --> ")
(println a2)
(display "(eq? a1 a2) --> ")
(println "No answer as both of the arguments should be non-numeric atoms")

(newline)
(define l '(Mary had a little lamb chop))
(define a 'Mary)
(display "Current l --> ")
(println l)
(display "Current a --> ")
(println a)
(display "What's the result of (eq? (car l) a)? --> ")
(println "It's true because (car l) is an atom 'Mary and a is also the atom Mary")

(newline)
(define l '(soured milk))
(define a 'milk)
(display "Current l --> ")
(println l)
(display "Current a --> ")
(println a)
(display "What's the result of (eq? (cdr l) a)? --> ")
(println "No answer as cdr returns a list and eq? takes non-numeric ATOMS as input")

(newline)
(define l '(beans beans we need jelly beans))
(display "Current l --> ")
(println l)
(display "What's the result of the expression (eq? (car l) (car (cdr l))) --> ")
(println (eq? (car l) (car (cdr l))))
(println "This compares the first and the second atoms in the list")

(newline)