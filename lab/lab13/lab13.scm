; Lab 13: Final Review

; Q3
(define (compose-all funcs)

 (define (helper first rest)
    (if (null? first) rest
      (helper (cdr first) ((car first) rest))
      )
    )
    
  (lambda (x) (helper funcs x))
)