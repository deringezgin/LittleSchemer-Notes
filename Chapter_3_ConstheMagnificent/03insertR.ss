#| Derin Gezgin's Notes from the Little Schemer |#

(define println
  (lambda (s)
    (display s)
    (newline)))

(define print-list
  (lambda (l)
    (display "Current l --> ")
    (println l)))

(define insertR
  (lambda (new old l)
    (cond
      ((null? l) (quote ()))  ; We have to check if the list is empty and return an empty list if its
      ((eq? (car l) old) (cons (car l) (cons new (cdr l))))  ; If there's a match insert the new in between the current first element and the rest of the list
      (else (cons (car l) (insertR new old (cdr l))))))) ; If there's not a match, call the function again with the remaining of the list and merge it with the current first

(newline)
(define l '(ice cream with fudge for dessert))
(define new 'topping)
(define old 'fudge)
(print-list l)
(display "Current new --> ")
(println new)
(display "Current old --> ")
(println old)
(display "What's the value of (insertR new old lat) --> ")
(println (insertR new old l))

(newline)
(define l '(tacos tamales and salsa))
(define new 'jalapeno)
(define old 'and)
(print-list l)
(display "Current new --> ")
(println new)
(display "Current old --> ")
(println old)
(display "What's the value of (insertR new old lat) --> ")
(println (insertR new old l))

(newline)
(define l '(a b c d f g d h))
(define new 'e)
(define old 'd)
(print-list l)
(display "Current new --> ")
(println new)
(display "Current old --> ")
(println old)
(display "What's the value of (insertR new old lat) --> ")
(println (insertR new old l))

(newline)