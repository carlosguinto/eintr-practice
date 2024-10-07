(defun main ()
  (let ((PI 3.114159)
        (radius (read-number "Enter sphere radius: ")))
    (let ((volume (* (/ 4 3) PI (* radius radius radius))))
      (message "The volume of the sphere given radius %d is %d." radius volume))))

(main)
