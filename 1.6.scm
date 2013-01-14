; `new-if` evaluates then-clause and else-clause
; `if` does not evaluates then and else clauses
;
; If define `new-if` I use `lambda` and `macro` for clauses.

(define-macro (new-if predicate then-clause else-clause)
  `(cond (,predicate (lambda () ,then-clause))
    (else (lambda () ,else-clause))))

; This works?
