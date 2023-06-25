;;; --- My customization for Emacs on Purcell's defaults

;; not split windows at startup
;; (setq pop-up-frames t)

;; supress warnings
(setq warning-minimum-level :emergency)

(setq-default tab-width 4)

(defun set-tab (width)
  "Set the tab width in the current buffer to the specified value."
  (interactive "nTab width: ")
  (setq-local tab-width width))

(setq-default indent-tabs-mode nil)

;; open recent files
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(provide 'bootstrap-local)
