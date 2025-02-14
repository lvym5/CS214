;;;; logTable.clj displays a table of logarithms.
;;;;
;;;; Input: start, stop and increment, three numbers.
;;;; Precondition: start < stop && increment > 0.
;;;; Output: A table of logarithms from start to stop,
;;;;          with interval of increment.
;;;;
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by:
;;;; Date: Lily McAboy
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns logTable)                                 ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; displayLogTable() recursively generates the log-table.
;;; Receive: start the first value for the table;
;;;          stop, the last  value for the table;
;;;           step, the step value for the table;
;;; Precondition: start < stop && increment > 0.
;;; Output: The table of logs from start to stop, by step.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; direct-recursive version

; replace this line with the definition of displayLogTable().

(defn displayLogTable[start stop increment]
  (if(<= start stop)
    (do
      (printf "The logarithm for %f is %f\n" start (Math/log10 start))
      (recur(+ start increment) stop increment)
      )
    )
  )


;; loop (indirect-recursion) version
(defn displayLogTable2 [start stop step]
  (loop [i start]                           ; set i to start
    (when (<= i stop)                       ; if i <= stop:
      (printf "The logarithm of %f is %f\n" ;  print one line
              i (Math/log10 i)
              )
      (recur (+ i step))                    ; recurse, i += step
      )
    )
  )


;; indirect/tail-recursive version (just using recur)
(defn displayLogTable3 [start stop step]
  (if (<= start stop)                     ; if start <= stop:
    (do                                      ; do these two things:
        (printf "The logarithm of %f is %f\n"  ; - print one line
                start (Math/log10 start)
                )
        (recur (+ start step) stop step)       ; - recurse, start+=step
        )
    )
  )
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; -main is a 'driver' for the displayLogTable() functions.
;;; Input: start, stop and increment.
;;; Output: The table of logarithms 
;;;          from start to stop by increment
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn -main []
  (println "To display a table of logarithms,")
  (print " enter the start, stop, and increment values: ") (flush)
  (let
    [ start (double(read))
     stop (double(read))
     increment (double(read))
     ]
    (println)
    (displayLogTable start stop increment)
    (println)
    (displayLogTable2 start stop increment) 
    (println)
    (displayLogTable3 start stop increment) 
    (println)
    )
  )

