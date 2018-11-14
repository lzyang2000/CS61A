#!/usr/bin/racket
#lang racket
(define (accumulate combiner start n term)
  'YOUR-CODE-HERE
  (if (= n 0)
      start
      (combiner (term n) (accumulate combiner start (- n 1) term))
  )
)

(define (accumulate-tail combiner start n term)
  'YOUR-CODE-HERE
  (if (= n 0)
      start
      (accumulate-tail combiner (combiner (term n) start) (- n 1) term)
      )
  
)

(define (map-stream f s)
 (if (null? s)
 nil
 (cons-stream (f (car s))
 (map-stream f
 (cdr-stream s)))))

(define (partial-sums stream)
  'YOUR-CODE-HERE
  (if (null? (cdr-stream stream))
    (cons-stream (car stream) nil)
    (cons-stream (car stream) 
         (partial-sums (cons-stream (+ (car stream) (car (cdr-stream stream))) 
                  (cdr-stream (cdr-stream stream))
                         ) 
           )
     )
  )

)


(define (rle s)
  'YOUR-CODE-HERE
  (if (null? s)
    nil
    (helper s (car s) 0)
)
)

(define (helper s prev num)
    (cond ((null? s)
           (if (zero? num)
               nil
               (cons-stream (list prev num) nil)
           )
          )
          ((not (equal? prev (car s)))
           (cons-stream (list prev num) (rle s))
          )
          (else (helper (cdr-stream s) prev (+ 1 num)))
    )
  )
