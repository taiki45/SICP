(provide #f)
(define (make-list proc init limit)
  (cond ((= init limit) (cons (proc limit)
                              '()))
        (else (cons (proc init)
                    (make-list proc
                               (+ 1 init)
                               limit)))))
