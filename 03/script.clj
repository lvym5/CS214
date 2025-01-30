Script started on 2024-02-01 19:41:09-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="82" LINES="33"]
]0;lvm5@remotel1: ~/214/labs/03/clojure[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/03/clojure[00m$ cat src/year_codes.clj
;;;;r_codes.clj is a driver for function yearCode.
;;;;
;;;; Input: An academic year, one of {freshman, sophomore,
;;;;                                  junior, senior}.
;;;; Output: The code for that academic year
;;;;         (1, 2, 3, 4 for valid entries; 
;;;;          0 for invalid entries).
;;;;
;;;; Usage: clojure -m year_codes
;;;;
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by:
;;;; Date:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns year_codes)                    ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; yearCode() returns the code for a given academic year.
;;; Receive: year, a string.
;;; Precondition: year is one of 
;;;   {freshman, sophomore, junior or senior}.
;;; Return: the integer code corresponding to year.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn yearCode [usr_year]
  (if(= usr_year "freshman") 1 (if (= usr_year "sophomore") 2 (if (= usr_year "junior") 3 (if (= usr_year "senior") 4 0))))
  )

(defn yearCode2 [year]
  (cond
    (= year "freshman") 1
    (= year "sophomore") 2
    (= year "junior") 3
    (= year "senior") 4
    :else 0
    )
  )

;; solution using the case function
(defn yearCode3 [year]
  (case year
    "freshman"  1
    "sophomore" 2
    "junior"    3
    "senior"    4
    0 ; default
    )
  )
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function -main() test-drives our yearCode() function.
;;; Input: year: one of {freshman, sophomore, junior, or senior}.
;;; Output: the code corresponding to year.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (print "\nEnter your academic year: ") (flush)
  (let
    [ year (read-line) ]                ; read year (a string)
    (println "Answer for yearCode(): " (yearCode year) "\n")      ; display its code
    (println "Answer for yearCode2(): " (yearCode2 year) "\n")
    (println "Answer for yearCode3(): " (yearCode3 year) "\n")
    )
  )


]0;lvm5@remotel1: ~/214/labs/03/clojure[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/03/clojure[00m$ clojure -m year_codes

Enter your academic year: freshman
Answer for yearCode():  1 

Answer for yearCode2():  1 

Answer for yearCode3():  1 

]0;lvm5@remotel1: ~/214/labs/03/clojure[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/03/clojure[00m$ clojure -m year_codes

Enter your academic year: sophomore
Answer for yearCode():  2 

Answer for yearCode2():  2 

Answer for yearCode3():  2 

]0;lvm5@remotel1: ~/214/labs/03/clojure[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/03/clojure[00m$ clojure -m year_codes

Enter your academic year: junior
Answer for yearCode():  3 

Answer for yearCode2():  3 

Answer for yearCode3():  3 

]0;lvm5@remotel1: ~/214/labs/03/clojure[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/03/clojure[00m$ clojure -m year_codes

Enter your academic year: senior
Answer for yearCode():  4 

Answer for yearCode2():  4 

Answer for yearCode3():  4 

]0;lvm5@remotel1: ~/214/labs/03/clojure[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/03/clojure[00m$ clojure -m year_codes

Enter your academic year: super senior
Answer for yearCode():  0 

Answer for yearCode2():  0 

Answer for yearCode3():  0 

]0;lvm5@remotel1: ~/214/labs/03/clojure[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/03/clojure[00m$ exit
exit

Script done on 2024-02-01 19:42:15-05:00 [COMMAND_EXIT_CODE="0"]
