(provide #f)
(define (elements-of-set? x set)
  (cond ((null? set) #f)
        ((equal? x (car set)) #t)
        (else (elements-of-set? x (cdr set)))))
(define (adjoin-set x set)
  (if (elements-of-set? x set)
    set
    (cons x set)))
(define (intersection-set set1 set2)
  (cond ((or (null? set1) (null? set2)) '())
        ((elements-of-set? (car set1) set2)
         (cons (car set1)
               (intersection-set (cdr set1) set2)))
        (else (intersection-set (cdr set1) set2))))
(define (union-set set1 set2)
  (cond ((or (null? set1) (null? set2)) '())
        ((elements-of-set? (car set1) set2)
         (union-set (cdr set1) set2))
        (else (append (list (car set1))
                      (union-set (cdr set1) set2)
                      set2))))
