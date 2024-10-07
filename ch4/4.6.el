;; 4.6 Exercises

;; Write your own ‘simplified-end-of-buffer’ function definition; then
;; test it to see whether it works.
(defun cg/simplified-end-of-buffer ()
  "Simplified version of going to the end of the buffer"
  (interactive)
  (push-mark)
  (goto-char (point-max)))

;; Use ‘if’ and ‘get-buffer’ to write a function that prints a message
;; telling you whether a buffer exists.
(defun cg/does-buffer-exist (buffer)
  "Prints a message whether a buffer exists."
  (interactive "sBuffer Name: ")
  (if (get-buffer buffer)
      (message "The buffer %s exists." buffer)
    (message "The buffer %s does not exist." buffer)))
