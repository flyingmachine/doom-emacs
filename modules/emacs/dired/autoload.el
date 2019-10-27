;;; emacs/dired/autoload.el -*- lexical-binding: t; -*-

;;;###autoload
(defun +dired/quit-all ()
  "Kill all `dired-mode' buffers."
  (interactive)
  (mapc #'kill-buffer (doom-buffers-in-mode 'dired-mode))
  (message "Killed all dired buffers"))
;;;###autoload
(defun +dired/enable-git-info-h ()
  (if (locate-dominating-file "." ".git")
      (dired-git-info-mode 1)))
