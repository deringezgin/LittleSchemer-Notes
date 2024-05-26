#| Derin Gezgin's Notes from the Little Schemer |#

(define println
  (lambda (s)
    (display s)
    (newline)))

(define print-a
  (lambda (a)
    (display "Current value of a --> ")
    (println a)))

(define print-list
  (lambda (l)
    (display "Current value of lat --> ")
    (println l)))

#|My implementation for the rember function|#
(define rember-first
  (lambda (target items)
    (cond
      ((null? items) (quote ()))
      ((eq? target (car items)) (cdr items))
      (else rember(target (cdr items))))))

#|Answer of the book. This doesn't work when we want to remove from the middle of the list|#
(define rember-book-first
  (lambda (a lat)
    (cond
      ((null? lat) (quote ()))
      (else (cond
              ((eq? (car lat) a) (cdr lat))
              (else (rember-book-first a
                      (cdr lat))))))))

(define lat '(bacon lettuce and tomato))
(define a 'bacon)
(print-list lat)
(print-a a)
(display "The value of (rember a lat) --> ")
(println (rember-first a lat))

(define lat '(bacon lettuce and tomato))
(define a 'and)
(print-list lat)
(print-a a)
(display "The value of (rember a lat) --> ")
(println (rember-book-first a lat))

(println "There's a problem here. We removed and but we lost the atoms that're preceeding and.")
(println "We have to use Cons in order to create a new list.")

#|THE SECOND COMMANDEMENT|#
#|USE CONS TO BUILD LISTS|#

(define rember-second
  (lambda (target items)
    (cond
      ((null? items) (quote ()))
      ((eq? target (car items)) (cdr items))
      (else (cons (car items) (rember-second target (cdr items)))))))

(define rember-book-second
  (lambda (a lat)
    (cond
      ((null? lat) (quote()))
      (else (cond
              ((eq? (car lat) a) (cdr lat))
              (else (cons (car lat) (rember-book-second a (cdr lat)))))))))

(println "Trying again")
(define lat '(bacon lettuce and tomato))
(define a 'and)
(print-list lat)
(print-a a)
(display "The value of (rember a lat) --> ")
(println (rember-second a lat))

#|
The function rember checked each atom of the lat, one at a time, to see if it was the same as the atom 'and. If the car
was not the same as the atom, we saved it to be consed to the final value later. When rember found the atom and, it
dropped it, and consed the previous atoms backonto the rest of the lat
|#

#|
Text based walkthrough of the (rember-second a lat)
When a is --> and
When lat is --> (bacon lettuce and tomato)
...
We call the function (rember-second a lat) -> (rember-second 'and (bacon lettuce and tomato))
(null? lat) is false
((eq? (car lat) a) is false
we move to else and return
(cons (car lat) (rember a (cdr lat)))) -> (cons (bacon) (rember a (lettuce and tomato))
///
We call the function (rember-second a lat) -> (rember-second 'and (lettuce and tomato))
(null? lat) is false
((eq? (car lat) a) is false -> (eq? lettuce and) -> #f
we move to else and return
(cons (car lat) (rember a (cdr lat)))) -> (cons (lettuce) (rember a (and tomato))
///
We call the function (rember-second a lat) -> (rember-second 'and (and tomato))
(null? lat) is false
((eq> (car lat) a) is true --> we return (cdr lat) which is tomato in this case
///
We move to upper level
(cons (lettuce) (tomato)) -> We return (letuce tomato)
///
We move to upper level
(cons (bacon) (lettuce tomato)) -> We return (bacon lettuce tomato) -> This's the final!!
///
|#

(define lat '(soy sauce and tomato sauce))
(define a 'sauce)
(print-list lat)
(print-a a)
(display "The value of (rember a lat) --> ")
(println (rember-second a lat))

(newline)