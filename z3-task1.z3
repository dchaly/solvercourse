; Variable declarations
(declare-fun x () Int)
(declare-fun y () Int)

; Constraints
(assert (=> (and (> (+ x y) -5) (< (- x y) 5))
(or (< (- (* 2 x) y) 15) (> (+ x (* 3 y)) 7)))
)

; Solve
(check-sat)
(get-model)

