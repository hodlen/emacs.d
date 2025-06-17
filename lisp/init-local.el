;;; --- My customization for Emacs on Purcell's defaults

(when (maybe-require-package 'auto-dark)
    (auto-dark-mode t) )

;; ;; auto-enable Company Coq
;; (add-hook 'coq-mode-hook #'company-coq-mode)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; Bind Meta key to Alt at GUI
(setq x-alt-keysym 'meta)

(add-hook 'conf-mode-hook 'outline-minor-mode)

(when (maybe-require-package 'clipetty)
  (add-hook 'after-init-hook 'global-clipetty-mode))

(provide 'init-local)
