#lang racket

;; Takes a multiple and a length and returns a list of all
;; multiples of that length
(define (count-by multiples-of list-length)
  (for/list ([i list-length])
    (* multiples-of (+ i 1))))

;; Makes a number negative
(define (make-negative n)
  (if (<= n 0)
      n
      (* -1 n)))

;; repeats a given string count number of times
(define (repeat-string count str)
  (if (= count 0)
      ""
      (string-append str (repeat-string (- count 1) str))))


;; Reduce but Grow:
;; Given a non-empty array of integers, return the result of
;; multiplying the values together in order
(define (grow lst)
  (foldl  * 1  lst))


;; Convert boolean values to strings 'Yes' or 'No'. :
;; Complete the method that takes a boolean value and return a
;; "Yes" string for true, or a "No" string for false.
(define (bool->word b)
  (match b
    [#t "Yes"]
    [#f "No"]))

;; Are they the "same"?
;; Given two arrays a and b write a function comp(a, b)
;; (compSame(a, b) in Clojure) that checks whether the two arrays
;; have the "same" elements, with the same multiplicities. "Same"
;; means, here, that the elements in b are the elements in a squared
;; , regardless of the order.
(define (comp a b)
  (let* ( [square (lambda (x) (* x x))]
          [square-a (map square a)]
          [sort-square-a (sort square-a <)]
          [sort-b (sort b <)])
    (equal? sort-square-a sort-b)))
