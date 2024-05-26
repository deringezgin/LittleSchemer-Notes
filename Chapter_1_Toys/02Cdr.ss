#| Derin Gezgin's Notes from the Little Schemer |#

#|Cdr|#

#|
THE LAW OF CDR
The primitive cdr is defined only for non-emoty lists.
The cdr of any non-empty list is always another list
|#

(define (print-pair l)
  (display "Current l --> ")
  (display l)
  (newline))  ; This adds a newline after printing the pair

(define (print-cdr l)
  (display "What's the cdr of l? --> ")
  (display (cdr l))
  (newline))

(define (println s)
  (display s)
  (newline))

(newline)
(define l '(a b c))
(print-pair l)
(print-cdr l)
(println "It's l without (car l)")

(newline)
(define l '((a b c) x y z))
(print-pair l)
(print-cdr l)

(newline)
(define l '(hamburger))
(print-pair l)
(print-cdr l)
(println "It should be an empty pair as there'd be no elements left.")

(newline)
(define l '((x) t r))
(print-pair l)
(print-cdr l)
(newline)

(newline)
(define l 'hamburger)
(print-pair l)
(display "What's the cdr of l? --> ")
(println "No answer")
(println "There won't be an answer as you can only ask cdr of an atom")

(newline)
(define l '())
(print-pair l)
(display "What's the cdr of l? --> ")
(println "No answer")
(println "There won't be an answer as you can only ask cdr of a non-empty list")

(newline)
(define l '((b) (x y) ((c))))
(print-pair l)
(display "What's (car (cdr l)) --> ")
(display (car (cdr l)))
(println "If we go stey by step, ")
(println "(cdr l) is ((x y) ((c)))")
(println "(car ((x y) ((x)))) is (x y)")

(newline)
(define l '((b) (x y) ((c))))
(print-pair l)
(display "What's (cdr (cdr l)) --> ")
(println (cdr (cdr l)))
(println "This'll take out the first element for twice so only ((c)) will remain")

(newline)
(define l '(a (b (c)) d))
(print-pair l)
(display "What's (cdr (car l)) --> ")
(println "No answer")
(println "There won't be an answer because (car l) is an atom and we can't use an atom with car")

#|Review|#
(newline)
(println "car and cdr takes non-empty lists as arguments!!")

(newline)