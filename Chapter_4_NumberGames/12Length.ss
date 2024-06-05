(define println
  (lambda (s)
    (display s)
    (newline)))

(define printList
  (lambda (l)
    (display "Current l --> ")
    (println l)))

(define len
  (lambda (lat)
    (cond
      ((null? lat) 0)
      (else (+ 1 (length (cdr lat)))))))

(define l '(hotdogs with mustard sauerkraut and pickles))
(printList l)
(display "What is the value of (length l) --> ")
(println (len l))

(define l '(ham and cheese on rye))
(printList l)
(display "What is the value of (length l) --> ")
(println (len l))

(newline)