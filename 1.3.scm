(define (square x)
 (* x x))
(define (reverse-sort l)
  (reverse (sort l)))
(define (pick-2-big sorted-list)
  (list (car sorted-list) (cadr sorted-list)))

(define (resolve x y z)
  (fold + 0 (map square (pick-2-big (reverse-sort (list x y z))))))
