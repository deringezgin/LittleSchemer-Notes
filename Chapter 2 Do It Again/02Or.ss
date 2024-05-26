#| Derin Gezgin's Notes from the Little Schemer |#

(define println
  (lambda l
    (display l)
    (newline)))

(define l1 '())
(define l2 '(d e f g))
(display "Currentl l1 --> ")
(println l1)
(display "Current l2 --> ")
(println l2)
(display "What's the value of '(or (null? l1) (atom? l2))' --> ")
(println (or (null? l1) (atom? l2)))
(println "The answer is true because l1 is true. or needs one t to be true in general")

(newline)
(define l1 '(a b c))
(define l2 '())
(display "Currentl l1 --> ")
(println l1)
(display "Current l2 --> ")
(println l2)
(display "What's the value of '(or (null? l1) (null? l2))' --> ")
(println (or (null? l1) (null? l2)))
(println "The answer is true because l2 is true. or needs one t to be true in general")

(newline)
(define l1 '(a b c))
(define l2 '(atom))
(display "Currentl l1 --> ")
(println l1)
(display "Current l2 --> ")
(println l2)
(display "What's the value of '(or (null? l1) (null? l2))' --> ")
(println (or (null? l1) (null? l2)))
(println "It's false because neither l1 or l2 is null. 0 or 0 --> false")

(newline)
(println "What does (or ...) do?")
(println "or asks two questions one at a time. If the first one is true, it stops and answers true.")
(println "otherwise it asks the second question and answers with whatever the second question is.")
(println "or can take more than one arguments")

(newline)