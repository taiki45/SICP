(define (last-pair item)
  (if (null? (cdr item))
    item
    (last-pair (cdr item))))
