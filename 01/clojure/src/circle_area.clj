
;;;; circle_area.clj calculates the area of a circle.
;;;;
;;;; Input: The radius of a circle.
;;;; Output: The area of that circle.
;;;;
;;;; Usage: clojure -m circle_area
;;;;
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Lily McAboy
;;;; Date: /19/2024
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns circle_area) ; namespace function names the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function circleArea() computes the area of a circle.
;;; Receive: itsRadius, a number.
;;; Precondition: itsRadius >= 0.0.
;;; Return: the area of the corresponding circle.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn circleArea [itsRadius] ;;creating a function called circleArea and taking in itsradius to compute the circle's area
  (* Math/PI (* itsRadius itsRadius) )  ; return PI*r^2
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function -main is where execution begins
;;; Input: the radius of a circle.
;;; Output: the area of that circle.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (println "\nTo compute the area of a circle,") 
  (print   " enter its radius: ") (flush) ;;flush is the output stream
  (let
    [ radius (read) ] ;;read IN radius from user

    (assert (>= radius 0) "-main: radius must be positive")
    (printf "\nThe area is %f\n\n" (circleArea radius))

    (print "\nThe area is ")
    (print (circleArea radius))
    (print "\n\n")

    (printf "\nThe area is %.15f\n\n" (circleArea radius))
  )
)
