;;; --- My customization for Emacs on Purcell's defaults

;; (require 'auto-dark-emacs)

;; auto-enable Company Coq
(add-hook 'coq-mode-hook #'company-coq-mode)

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
