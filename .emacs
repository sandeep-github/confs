;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Library Paths
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d")

;; org mode
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

(require 'openwith)
(openwith-mode t)

;; globel newline and indent for enter key
;; (define-key global-map (kbd "RET") 'newline-and-indent)
(define-key global-map (kbd "RET")  'reindent-then-newline-and-indent)

;;(setq yas/trigger-key (kbd "C-c <kp-multiply>"))
;;(define-key global-map (kbd "C-x SPC") 'ecb-toggle-ecb-window)

;; line number show
(global-linum-mode 1)
;; applicable in shell mode
(require 'xcscope)
(define-key global-map (kbd "C-x RET") 'ecb-activate)
(define-key global-map (kbd "C-x ESC") 'ecb-toggle-ecb-windows)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
'(ecb-options-version "2.40"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
)

(define-key global-map (kbd "C-c x s") 'shell)

(require 'ido)
(setq ido-enable-flex-matching t)
    (setq ido-everywhere t)
(ido-mode 1)

;; python
(add-to-list 'load-path "~/.emacs.d/python-mode.el-6.0.10/")
(require 'python-mode)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

;; dired tweaks / settings
;; ls listing should list directories first
;;(setq dired-listing-switches "-aBhl  --group-directories-first")
;; sorting ( press 'ss' for size sort 'st' for time sort etc
(require 'dired-sort-map)


;; increment number under cursor
(defun increment-number-at-point ()
  (interactive)
  (skip-chars-backward "0123456789")
  (or (looking-at "[0123456789]+")
      (error "No number at point"))
  (replace-match (number-to-string (1+ (string-to-number (match-string 0))))))
(global-set-key (kbd "C-x +") 'increment-number-at-point)
