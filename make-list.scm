(define (make-list init limit)
  (if (= init limit)
    (list limit)
    (append (list init) (make-list (+ init 1) limit))))
