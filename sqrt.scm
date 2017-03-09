;求解平方根算法
(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (square x) (* x x))

(define (imporve guess x)
  (average guess (/ x  guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  ( < (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (imporve guess x)
               x)))
               
(define (sqrt x) (sqrt-iter 1.0 x))


(sqrt 2)