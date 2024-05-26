#| Derin Gezgin's Notes from the Little Schemer |#

(define println
  (lambda (l)
    (display l)
    (newline)))

(define member?
  (lambda (a l)
    (cond ((null? l) #f)  ; Checking if the list is null or not. If it's null there's no need to continue
      ((eq? (car l) a) #t)  ; Checking if there's a match
      (else (member? a (cdr l))))))  ; At worst case calling the function again with the rest of the list

(newline)
(define lat '(coffee tea or milk))
(define a 'tea)
(display "Current lat -- > ")
(println lat)
(display "Current a --> ")
(println a)
(display "Is it true that a is a member of lat --> ")
(println (member? a lat))

(newline)
(println "THE FIRST COMMANDMENT")
(println "Always ask null? as the first question in expressing any function.")

(newline)
(define lat '(fried eggs and scrambled eggs))
(define a 'poached)
(display "Current lat -- > ")
(println lat)
(display "Current a --> ")
(println a)
(display "Is it true that a is a member of lat --> ")
(println (member? a lat))

(newline)
(define lat '(mashed potatoes and meat gravy))
(define a 'meat)
(display "Current lat -- > ")
(println lat)
(display "Current a --> ")
(println a)
(display "Is it true that a is a member of lat --> ")
(println (member? a lat))

(newline)
(define lat '(bagels and lox))
(define a 'liver)
(display "Current lat -- > ")
(println lat)
(display "Current a --> ")
(println a)
(display "Is it true that a is a member of lat --> ")
(println (member? a lat))

#|Solution of the book for the problem|#
(define member2?
  (lambda (a lat)
    (cond
      ((null? lat) #f) ; Checking if the list is null or not
      (else (or (eq? (car lat) a) (member? a (cdr lat)))))))

#|
In the last case we check if?
1. The first element of the list is the same atom as the target atom
OR
2. The target atom is somewhere else in the list
|#

(newline)