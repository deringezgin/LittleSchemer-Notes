#| Derin Gezgin's Notes from the Little Schemer |#

(define println
  (lambda (s)
    (display s)
    (newline)))

(define print-list
  (lambda (l)
    (display "Current l --> ")
    (println l)))

#|First is a function that returns the first element of every list in a list of lists|#

(define firsts
  (lambda (l)
    (cond
      ((null? l) (quote ()))
      (else (cons (car (car l)) (firsts (cdr l)))))))

(newline)
(define l '((a b) (c d) (e f)))
(print-list l)
(display "Whats the value of (firsts l) --> ")
(println (firsts l))

(newline)
(define l '())
(print-list l)
(display "Whats the value of (firsts l) --> ")
(println (firsts l))

(newline)
(define l '((apple peach pumpkin) (plum pear cherry) (grape raisin pea) (bean carrot eggplant)))
(print-list l)
(display "Whats the value of (firsts l) --> ")
(println (firsts l))

(newline)
(define l '((five plums) (four) (eleven green oranges)))
(print-list l)
(display "Whats the value of (firsts l) --> ")
(println (firsts l))

(newline)
(define l '(((five plums) four) (eleven green oragnes) ((no) more)))
(print-list l)
(display "Whats the value of (firsts l) --> ")
(println (firsts l))

(newline)

#|THE THIRD COMMANDMENT|#
#|WHEN BUILDING A LIST, DESCIRBE THE FIRST TYPICAL ELEMENT, AND THEN CONS IT ONTO THE NATURAL RECURSION|#
#|In this case, (car (car l)) is the typical element as our final list should consist of these|#
#|We have to cons it with the recursive calls on the same list|#

(newline)