(define println
  (lambda (s)
    (display s)
    (newline)))

(define tup+
  (lambda (nums1 nums2)
    (cond
      ((null? nums1) nums2)  ; If one of the lists are empty, just return the rest of the other list
      ((null? nums2) nums1)  ; This covers the case where both of the tups are empty as
      (else (cons  ; Create a new list with
              (+ (car nums1) (car nums2))  ; The sum of the first elements
              (tup+ (cdr nums1) (cdr nums2)))))))  ; And the function called on the rest of the lists

(define tup1 '(3 7 8 1))
(define tup2 '(4 6))
(display "The current tup1 --> ")
(println tup1)

(display "The current tup2 --> ")
(println tup2)

(display "What's the value of (tup+ tup1 tup2) --> ")
(println (tup+ tup1 tup2))
