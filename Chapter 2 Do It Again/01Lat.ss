#| Derin Gezgin's Notes from the Little Schemer |#

(define (println l)
  (display l)
  (newline))

(define (print-list l)
  (display "Current list is --> ")
  (println l))

(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define (lat? l)  #|The lat function that we need|#
  (cond  #|cond statement that can include several conditions|#
    ((null? l) #t)  #|If the input is null, return true as it's not a list|#
    ((atom? (car l)) (lat? (cdr l))) #|If the first element in the list is an atom, call the function again with the rest of the list|#
    (else #f))  #|If the list is not null or the first element is not an atom, than the first element is a pair so return false|#
  )

(newline)
(define l '(Jack Sprat could eat no chicken fat))
(print-list l)
(display "True or false: (lat? l) --> ")
(println (lat? l))
(println "It's true as each S-expression is an atom")

(newline)
(define l '((Jack) Sprat could eat no chicken fat))
(print-list l)
(display "True or false: (lat? l) --> ")
(println (lat? l))
(println "It's false as the first element of l is a list")

(newline)
(define l '(Jack (Sprat could) eat no chicken fat))
(print-list l)
(display "True or false: (lat? l) --> ")
(println (lat? l))
(println "It's false because the second element of the list is a list itself too.")

(newline)
(define l '())
(print-list l)
(display "True or false: (lat? l) --> ")
(println (lat? l))
(println "It's true as an empty list should return true. It doesn't contain any lists")

(newline)
(println "A lat is a list of atoms!")

(newline)
(define l '(bacon and eggs))

(print-list l)
(display "True or false: (lat? l) --> ")
(println (lat? l))
(println "It consists atoms so it should be true")

(newline)