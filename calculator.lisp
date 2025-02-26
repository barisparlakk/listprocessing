;; Makro kullanarak bir hesap makinesi yaptik

(defmacro calculate (operand a b)
  `(case ',operand
     (+ (+ ,a ,b))
     (- (- ,a ,b))
     (* (* ,a ,b))
     (/ (/ ,a ,b))
     (t (format t "Geçersiz işlem!~%"))))

;; Kullanım
(calculate + 5 3)  ; => 8
(calculate * 4 2)  ; => 8


;; defun ile fonksiyon tanimlayip hesap makinesi yaptik. 

(defun hesap-makinesi ()
  (format t "İşlem seçin: (+, -, *, /): ")
  (let ((islem (read))
        (a (read))
        (b (read)))
    (cond ((= islem '+) (format t "~a + ~a = ~a~%" a b (+ a b)))
          ((= islem '-) (format t "~a - ~a = ~a~%" a b (- a b)))
          ((= islem '*) (format t "~a * ~a = ~a~%" a b (* a b)))
          ((= islem '/) (if (not (= b 0)) 
                            (format t "~a / ~a = ~a~%" a b (/ a b))
                            (format t "Bölme hatası: Sıfıra bölme!")))
          (t (format t "Geçersiz işlem!")))))

;; Ornek kullanim.
(hesap-makinesi)
