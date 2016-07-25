(in-package :gnu-generate)

(defparameter *license-text*
  (with-open-file (stream "LICENSE")
    (let ((text (make-string (file-length stream))))
      (read-sequence text stream)
      text))
  "The license text to be put at the start of all free software.")


(defun generate-free-software-from-string (text length)
  "Uses the string TEXT to generate free software with LENGTH tokens of code."
  (let ((generator (markov-text:make-markov-text-generator text)))
    (concatenate 'string *license-text*
		 (apply #'concatenate 'string (funcall generator length)))))

(defun generate-free-software-from-file (file-name length)
  "Uses the string stored in FILE-NAME to generate free software with LENGTH tokens of code."
  (with-open-file (stream file-name)
    (let ((text (make-string (file-length stream))))
      (read-sequence text stream)
      (generate-free-software-from-string text length))))

