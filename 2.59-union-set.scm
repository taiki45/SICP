(define (elements-of-set? x set)
  (cond ((null? set) #f)
        ((equal? x (car set)) #t)
        (else (elements-of-set? x (cdr set)))))
(define (union-set set1 set2)
  (cond ((or (null? set1) (null? set2)) '())
        ((elements-of-set? (car set1) set2)
         (union-set (cdr set1) set2))
        (else (append (list (car set1))
                      (union-set (cdr set1) set2)
                      set2))))
