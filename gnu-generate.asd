(asdf:defsystem #:gnu-generate
  :description "Generate Free Software"
  :author "Drew Dudash <drewd8@vt.edu>"
  :license "GPL"
  :serial t
  :depends-on (:markov-text)
  :components ((:file "package")
	       (:file"gnu-generate")))
