;; Write an interactive function with an optional argument that tests whether
;; its argument, a number, is greater than or equal to, or else, less than the
;; value of `fill-column`, and tells you which, in a message. However, if you
;; do not pass an argument to the function, use 56 as a default value.

(defun cg/optional-exercise (&optional arg)
  "Checks if ARG is greater than, equal to,
or less than the value of `fill-column`.

If no ARG is passed, then the default value is 56"
  (interactive "P")
  (let ((num (or arg 56))) ;; let num be arg or 56 if arg is nil
    (cond
     ((< num fill-column) (message "ARG is less than fill-column"))
     ((> num fill-column) (message "ARG is greater than fill-column"))
     (t (message "ARG is equal to fill-column")))))

