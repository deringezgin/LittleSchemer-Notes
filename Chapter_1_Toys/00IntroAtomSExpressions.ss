#| Derin Gezgin's Notes from the Little Schemer |#

#|atom? FUNCTION BEFORE THE 1. TOYS|#
#|
This is a function that checks if the input is an Atom or not.
Atom is the main data type in the scheme programming language.
It can be a:
  1. Number (1, 2, 3)
  2. Symbol ('a, 'atom)
  3. Strings ("atom")
  4. Booleans (#t (for True), #f (for False))
There're some other data structres which are not qualifies at atom like a list or pair
|#

(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define (println s)
  (display s)
  (newline))

(display "Testing to see if quote is an atom. ")
(println (atom? (quote ()))) #|--> #f|#
(println "It's an empty list, it's not an atom.")

(newline)
(println "1. TOYS")

#|Testing if different things are atom|#

(newline)
(display "Is atom an Atom? ")
(display (atom? (quote atom))) #|--> #t|#
(newline)
(display "It's an atom because it'll be evaluated as a symbol. It's a string of characters")
(newline)

(newline)
(display "Is turkey an Atom? ")
(display (atom? (quote turkey))) #|--> #t|#
(newline)
(display "It's an atom because it'll be evaluated as a symbol. It's a string of characters.")
(newline)

(newline)
(display "Is 1492 an atom? ")
(display (atom? (quote 1492))) #|--> #t|#
(newline)
(display "It's a string of digits")
(newline)

(newline)
(display "Is u an atom? ")
(display (atom? (quote u))) #|--> #t|#
(newline)
(display "It's a string of one character")
(newline)

(newline)
(display "Is *abc$ is an atom? ")
(display (atom? (quote *abc$))) #|--> #t|#
(newline)
(display "The answer is yes as it's a string of characters beginning with anything other than '(' or ')'")
(newline)

#|Testing if different things are lists|#

(newline)
(display "Is (atom) a list? ")
(newline)
(display "YES! (atom) is a list. It's an atom enclosed by parantheses.")
(newline)

(newline)
(display "Is (atom turkey or) is a list?")
(newline)
(display "YES! It's a collection of atoms enclosed by parantheses. Which is a list")
(newline)

(newline)
(display "Is '(atom turkey) or' is a list?")
(newline)
(display "NO! It's not an atom or a list. It's two S-Expressions not enclosed by paranthesis.")
(newline)
(display "(atom turkey) is a list with two atoms and or is a atom")
(newline)

(newline)
(display "Is ((atom turkey) or) a list?")
(newline)
(display "YES! In this case the expressions are enclosed by parantheses. (atom turkey) is a list in the bigger list.")
(newline)

#|Testing if different expressions are S-Expression|#

(newline)
(display "Is it true that this is an S-Expression? --> xyz")
(newline)
(display "YES! All atoms are S-Expressions")
(newline)

(newline)
(display "Is (x y z) is an S-Expression?")
(newline)
(display "YES! It's a list. And all lists are S-Expressions")
(newline)

(newline)
(display "Is ((x y) z) is an S-Expression?")
(newline)
(display "YES! Like the last question, it's an S-Expression")
(newline)
(display "It's a smaller list in a bigger list")
(newline)

#|Refreshing the memory|#

(newline)
(display "Is it true that (how are you doing so far) is a list?")
(newline)
(display "YES! It's a collection of S-Expressions enclosed by parantheses.")
(newline)

(newline)
(display "How many S-Expressions there're in the previous list?")
(newline)
(println "6!. how, are, you, doing, so, far")

(newline)
(println "Is it true that (((how) are) ((you) (doing so)) far)) is a list")
(println "YES! It's a collection of S-Expressions enclosed by parantheses.")
(println "There're 3 S-Expressions in the list. ((how) are), ((you) (doing so)), and far")

(newline)
(println "Is it true that () is a list?")
(println "YES! It's a special S-Expression which contains 0 expressions. It's called a null / empty list")

(newline)
(display "Is it true that () is an atom? ")
(println (atom? (quote ())))
(println "NO! It's just a list. It's not an atom.")

(newline)
(println "Is it true that (() () () ()) is a list?")
(println "YES! It's a collection of S-Expressions")

(newline)