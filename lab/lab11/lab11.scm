


(define-macro (def func bindings body)
    (list 'define func (list 'lambda bindings body))
)

   