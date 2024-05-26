#| Derin Gezgin's Notes from the Little Schemer |#

#|Review of Stuff until eq?|#
(define (println s)
  (display s)
  (newline))

(define (print-list l)
  (display "Current l --> ")
  (println l))

(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define l 'Harry)
(print-list l)
(display "Is it true or false that l is an atom? --> ")
(println (atom? l))
(println "It's true as Harry is an atom")

(newline)
(define l '(Harry had a heap of apples))
(print-list l)
(display "Is it true or false that l is an atom? --> ")
(println (atom? l))
(println "It's false as l is a list")

(newline)
(println "atom? takes one argument and it can be any S-expression")

(newline)
(print-list l)
(display "Is (atom? (car l)) true or false --> ")
(println (atom? (car l)))
(println "It's true as (car l) returns Harry which's an atom")

(newline)
(print-list l)
(display "Is (atom? (cdr l)) true or false --> ")
(println (atom? (cdr l)))
(println "It's false as (cdr l) returns (had a heap of apples)")

(newline)
(define l '(Harry))
(print-list l)
(display "Is (atom? (cdr l)) true or false --> ")
(println (atom? (cdr l)))
(println "It's false as (cdr l) is () which is not an atom.")

(newline)
(define l '(swing low sweet cherry oat))
(print-list l)
(display "Is (atom? (car (cdr l))) true or false --> ")
(println (atom? (car (cdr l))))
(println "It's true as (cdr l) is (low sweet cherry oat)")
(println "and (car (cdr l)) is low, which's an atom")

(newline)
(define l '(swing (low sweet) cherry oat))
(print-list l)
(display "Is (atom? (car (cdr l))) true or false --> ")
(println (atom? (car (cdr l))))
(println "It's false because (cdr l) is ((low sweet) cherry oat)")
(println "(car (cdr l)) is (low sweet) which is a list")

(newline)