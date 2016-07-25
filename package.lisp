(defpackage :gnu-generate
  (:use :common-lisp
	:markov-text)
  (:export :generate-free-software-from-string
	   :generate-free-software-from-file))
