;;; --- My customization for Emacs on Purcell's defaults

(require 'auto-dark)
(ignore-errors (auto-dark-mode t))

;; auto-enable Company Coq
(add-hook 'coq-mode-hook #'company-coq-mode)

(provide 'init-local)
