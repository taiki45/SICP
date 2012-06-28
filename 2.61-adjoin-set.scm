(provide #f)
(define (adjoin-set x set)
  (cond ((or (null? set) (null? x)) set)
        ((< x (car set)) (cons x set))
        ((null? (cdr set))
         (if (> x (car set))
           (cons (car set) (cons x '()))
           set))
        ((> x (car set))
         (cons (car set) (adjoin-set x (cdr set))))
        ((= x (car set)) set)
        (else set)))
(define (elements-of-set? x set)
  (cond ((null? set) #f)
        ((equal? x (car set)) #t)
        (else (elements-of-set? x (cdr set)))))
