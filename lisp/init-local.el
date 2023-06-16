;;; --- My customization for Emacs on Purcell's defaults

(require 'auto-dark)
(auto-dark-mode t)

;; auto-enable Company Coq
(add-hook 'coq-mode-hook #'company-coq-mode)

(setq-default tab-width 4)

(defun set-tab (width)
  "Set the tab width in the current buffer to the specified value."
  (interactive "nTab width: ")
  (setq-local tab-width width))

(setq-default indent-tabs-mode nil)

;; the tabs plugin
;; (require 'centaur-tabs)
;; (centaur-tabs-headline-match)
;; (centaur-tabs-mode t)
;; (global-set-key (kbd "C-<prior>")  'centaur-tabs-backward)
;; (global-set-key (kbd "C-<next>") 'centaur-tabs-forward)

;; open recent files
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(provide 'init-local)
