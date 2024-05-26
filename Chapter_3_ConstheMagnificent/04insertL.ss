#| Derin Gezgin's Notes from the Little Schemer |#

(define println
  (lambda (s)
    (display s)
    (newline)))

(define print-list
  (lambda (l)
    (display "Current l --> ")
    (println l)))

(define insertL
  (lambda (new old lat)
    (cond
      ((null? lat) (quote ())) ; As usual, we have to check if the list is empty or not. And return an empty list if it is.
      ((eq? (car lat) old) (cons new lat))  ; If the first element in the list is our target index, we have to merge the new one before to the remaining of the list
      (else (cons (car lat) (insertL new old (cdr lat))))))) ; If there's no match, we have to marge the first element of the list with the recursive result. We'll look for or

#|Testing the new function. I'm going to use the tests from the insertR function|#

(newline)
(define l '(ice cream with fudge for dessert))
(define new 'topping)
(define old 'fudge)
(print-list l)
(display "Current new --> ")
(println new)
(display "Current old --> ")
(println old)
(display "What's the value of (insertL new old lat) --> ")
(println (insertL new old l))

(newline)
(define l '(tacos tamales and salsa))
(define new 'jalapeno)
(define old 'and)
(print-list l)
(display "Current new --> ")
(println new)
(display "Current old --> ")
(println old)
(display "What's the value of (insertL new old lat) --> ")
(println (insertL new old l))

(newline)
(define l '(a b c d f g d h))
(define new 'e)
(define old 'd)
(print-list l)
(display "Current new --> ")
(println new)
(display "Current old --> ")
(println old)
(display "What's the value of (insertL new old lat) --> ")
(println (insertL new old l))

(newline)