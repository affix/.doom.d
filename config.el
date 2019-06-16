;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(unless window-system
  (require 'mouse)
  (xterm-mouse-mode t)
  (global-set-key [mouse-4] (lambda ()
                              (interactive)
                              (scroll-down 1)))
  (global-set-key [mouse-5] (lambda ()
                              (interactive)
                              (scroll-up 1)))
  (defun track-mouse (e))
  (setq mouse-sel-mode t)
)

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(require 'all-the-icons)
(add-hook 'after-init-hook #'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(require 'all-the-icons)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
