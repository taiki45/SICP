(define (my-reverse-iter item)
    (reverse-iter (cdr item) (cons (car item) '())))
(define (reverse-iter item l)
  (if (null? (cdr item))
    ()
    ()))

(define (my-reverse item)
  (if (null? (cdr item))
    item
    (append (my-reverse (cdr item)) (cons (car item) '()))))
