(define nil '())
(define (square-list list)
  (cond ((null? list) nil)
        (else (cons (* (car list) (car list))
                    (square-list (cdr list))))))
