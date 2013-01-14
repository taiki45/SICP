(require "./test.scm")
(provide #f)

(define (integers-from n)
  (cons n (lambda () (integers-from (+ 1 n)))))
(define (divisible? x y) (= (remainder x y) 0))
(define (fibgen a b)
  (cons a (lambda () (fibgen b (+ a b)))))
(define fibs (fibgen 0 1))
(define (sieve stream)
  (cons
    (car stream)
    (lambda () (sieve (stream-filter
                        (lambda (x) (not (divisible? x (car stream))))
                        (stream-cdr stream))))))
(define primes (sieve (integers-from 2)))
