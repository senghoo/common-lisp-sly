(defun mfiano-keybindings/yank-primary-selection ()
  (interactive)
  (let ((primary (or (x-get-selection-value)
                     (x-get-selection))))
    (when primary
      (push-mark (point))
      (insert-for-yank primary))))

(defun mfiano-keybindings/smarter-move-beginning-of-line (arg)
  (interactive "^p")
  (setq arg (or arg 1))
  (when (/= arg 1)
    (let ((line-move-visual nil))
      (forward-line (1- arg))))
  (let ((orig-point (point)))
    (back-to-indentation)
    (when (= orig-point (point))
      (move-beginning-of-line 1))))

(defadvice kill-region (before slick-cut activate compile)
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (list (line-beginning-position)
           (line-beginning-position 2)))))
