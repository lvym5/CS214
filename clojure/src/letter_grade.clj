;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Name: Lily McAboy
;;;; Date: 2/5/2024
;;;; CS 214 Project 03
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns letter_grade) ; namespace function names the program

(defn letterGrade [usr_grade]
(let [grade (/ usr_grade 10)]
 (cond
  (= grade 10) "A"
  (= grade 8) "B"
  (= grade 7) "C"
  (= grade 6) "D"
  :else "F"
 ))
 )

(defn -main []
 (println "\nEnter your grade:,")
 (let
  [ grade (read) ]

  (assert (>= radius 0) "-main: grade must be positive")
  (printf "\nYour letter grade is %f\n\n" (letterGrade grade))
 )
 )