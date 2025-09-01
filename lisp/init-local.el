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

;; Hand-written customizations (synced from customize-group)
(setq auto-dark-allow-osascript t)
(setq auto-dark-themes '((sanityinc-tomorrow-bright) (sanityinc-tomorrow-day)))
(setq backup-directory-alist '(("\".*\"" . "~/.cache/emacs/backup")))
(setq custom-enabled-themes '(sanityinc-tomorrow-bright))
(setq grep-command "grep --color=auto -nH --null -r -e")
(setq grep-highlight-matches t)
(setq tab-width 4)

;; Set custom-file to cache location outside .emacs.d
(setq custom-file "~/.cache/emacs/custom.el")
(load custom-file 'noerror)

(provide 'init-local)
