(define (length item)
  (if (null? item)
    0
    (+ 1 (length (cdr item)))))
