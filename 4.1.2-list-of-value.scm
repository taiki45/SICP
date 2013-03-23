(define (left->right exps env)
  (if (no-operands? exps)
    '()
    (let ((left-operand (eval (first-operand exps) env)))
      (cons left-operand
            (left->right (rest-operands exps) env))))

(define (right->left exps env)
  (if (no-operands? exps)
    '()
    (let ((right-operand (right->left (rest-operands exps) env)))
      (cons (eval (first-operand exps) env)
            right-operand))))
