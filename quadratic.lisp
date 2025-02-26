;; x^2 - 6x + 4 = 0 denkleminin köklerini hesaplama
(defun solve-quadratic (a b c)
  (let* ((discriminant (- (* b b) (* 4 a c)))
         (root1 (/ (+ (- b) (sqrt discriminant)) (* 2 a)))
         (root2 (/ (- (- b) (sqrt discriminant)) (* 2 a))))
    (list root1 root2)))
;; Kullanım
(solve-quadratic 1 -4 4)  ; => (2 2)