;;;; Goose.clj provides a Goose "class".
;;;; 
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by:
;;;; Date:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; bring in 'Bird' (to be used as 'superclass')
(load "Bird")
; Replace this line with one that loads module "Bird"


;; define 'Goose' as 'subclass' of Bird

(defrecord Goose [^Bird name] )

; Replace this line with one that declares a Goose record-type


;;; Goose constructors
;;; - default: no args
;;;   Postcondition: name == a default value. 
;;; - explicit1:
;;;   Receive: itsName, a String
;;;   Postcondition: name == itsName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Replace this line with a definition of make-Goose()...

(defn make-Goose
  ([]                (->Goose "Ann Onymous"))
  ([^String itsName] (->Goose itsName))
  )


;;; method to retrieve a Goose's class
;;; Receive: this, a Goose object.
;;; Return: "Goose".
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Replace this line with a definition of getClass() for a Goose...

;;; method to retrieve a Goose's call
;;; Receive: this, a Goose object.
;;; Return: "Honk!"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Replace this line with a definition of getCall() for a Goose...

(defmethod getClass Goose [ _ ]
  "Goose"
  )

(defmethod getCall Goose [ _ ]
  "Honk!"
  )
