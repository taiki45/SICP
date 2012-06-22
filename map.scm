(define nil '())

(define (my-map proc item)
  (cond ((null? item) nil)
        ((not (pair? item)) (proc item))
        (else (cons (my-map proc (car item))
                    (my-map proc (cdr item))))))
