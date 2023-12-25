;;; init.el ---  -*- lexical-binding: t -*-

;; SPDX-License-Identifier: GPL-3.0-or-later
;; Copyright 2023, Mattias Bengtsson <mattias.jc.bengtsson@gmail.com>

;; Author           : Mattias Bengtsson <mattias.jc.bengtsson@gmail.com>
;; Version          : 20231225
;; Keywords         : local
;; Package-Requires : ((emacs 29.1))
;; URL              : https://github.com/mattiasb/.config
;; Compatibility    : GNU Emacs: 29.x

;;; Commentary:

;;; Note:

;;; Code:

(load-theme 'wombat)
(fido-vertical-mode)
(windmove-default-keybindings)

(custom-set-variables
 '(inhibit-startup-buffer-menu t)
 '(inhibit-startup-echo-area-message "mattiasb")
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil))

(custom-set-faces)

(provide 'init)
;;; init.el ends here
