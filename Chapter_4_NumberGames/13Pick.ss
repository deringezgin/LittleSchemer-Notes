(define println
  (lambda (s)
    (display s)
    (newline)))

(define sub1
  (lambda (n)
    (- n 1)))

(define printList
  (lambda (lat)
    (display "Current value of l --> ")
    (println lat)))

(define pick
  (lambda (ind lat)
    (cond
      ((zero? (sub1 ind)) (car lat))
      (else (pick (sub1 ind) (cdr lat))))))

(define lat '(lasagna spaghetti ravioli macaroni meatball))
(printList lat)
(display "What is the 4th element in the lat --> ")
(println (pick 4 lat))

(newline)