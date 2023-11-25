(ql:quickload :hunchentoot)
(ql:quickload :com.inuoe.jzon)
(add-package-local-nickname '#:jzon '#:com.inuoe.jzon)
(hunchentoot:start (make-instance 'hunchentoot:easy-acceptor :port 4242))

(hunchentoot:define-easy-handler (say-hello :uri "/hello") (name)
 (setf (hunchentoot:content-type*) "text/plain")
  (format
   nil "Hello, ~a! I am perimetro20! ~%I build a website with Lisp!!!" name))
