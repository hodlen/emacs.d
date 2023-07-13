;;; --- My customization for Emacs on Purcell's defaults
(require-package 'auto-dark)
(ignore-errors (auto-dark-mode t))

;; auto-enable Company Coq
(add-hook 'coq-mode-hook #'company-coq-mode)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; Bind Meta key to Alt at GUI
(setq x-alt-keysym 'meta)

(provide 'init-local)
