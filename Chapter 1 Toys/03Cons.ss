#| Derin Gezgin's Notes from the Little Schemer |#

#|Cons|#

#|
THE LAW of CONS
The primitive cons takes two arguments.
The second argument to cons must be a list.
The result is a list.
|#

(define (println s)
  (display s)
  (newline))

(define a 'peanut)
(display "Current a --> ")
(println a)
(define l '(butter and jelly))
(display "Current l --> ")
(println l)
(display "What's (cons a l) --> ")
(println (cons a l))
(println "We can read this as cons the atom a onto the list l")
(println "Cons adds an atom to the front of a list")

(newline)
(define s '(banana and))
(display "Current s --> ")
(println s)
(define l '(peanut buter and jelly))
(display "Current l --> ")
(println l)
(println "What's the cons of s and l --> ")
(println (cons s l))
(println "Cons adds any S-Expression to the front of a list")

(newline)
(define s '((help) this))
(display "Current s --> ")
(println s)
(define l '(is very ((hard) to learn)))
(display "Current l --> ")
(println l)
(display "What's (cons s l) --> ")
(println (cons s l))
(newline)

(println "Cons takes two arguemnts: ")
(println "1. Any S-Expression")
(println "2. Any list")

(newline)
(define s '(a b (c)))
(display "Current s --> ")
(println s)
(define l '())
(display "Current l --> ")
(println l)
(display "What's is (cons s l) --> ")
(println (cons s l))

(newline)
(define s'a)
(display "Current s --> ")
(println s)
(define l'())
(display "Current l --> ")
(println l)
(display "What is (cons s l) --> ")
(println (cons s l))
(println "As the cons will return a list, it'll return a list with only s.")

(newline)
(define s'((a b c)))
(display "Current s --> ")
(println s)
(define l'a)
(display "Current l --> ")
(println l)
(display "What is (cons s l) --> ")
(println "No answer")
(println "The second argument (l) must be a list")

(newline)
(define s'a)
(display "Current s --> ")
(println s)
(define l'b)
(display "Current l --> ")
(println l)
(display "What is (cons s l) --> ")
(println "No answer")
(println "The second argument (l) must be a list")

(newline)
(define s 'a)
(display "Current a --> ")
(println a)
(define l '((b) c d))
(display "Current l --> ")
(println l)
(display "What is (cons s (car l)) --> ")
(println (cons s (car l)))
(println "Car of l is (b) and if we add a in front of b it'd be (a b) as expected.")

(newline)
(display "What is (cons s (cdr l)) --> ")
(println (cons s (cdr l)))
(println "cdr of l is (c d). if we add s in front of it the result would be (a c d).")

(newline)