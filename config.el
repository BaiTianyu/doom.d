;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "laobai"
      user-mail-address "baitianyu2009@126.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "JetBrains Mono" :size 13 :weight 'regular)
      doom-variable-pitch-font (font-spec :family "JetBrains Mono" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-solarized-light)


;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;;

;; ===========================================================================================================================================================
;; evil
;;
(global-evil-mc-mode  1)
;; evil

;; ===========================================================================================================================================================
;; company
;;
(setq company-tooltip-idle-delay 0.2)
;; end company

;; ===========================================================================================================================================================
;; face
(setq cursor-type t)
(setq blink-cursor-mode t)
(setq )
(+global-word-wrap-mode t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(region ((t (:extend t :background "LightCyan2")))))
;; end face

;; ===========================================================================================================================================================
;; keymap
;;
(map!
 :nvi "C-k" #'kill-line ; 在正常、可视、插入模式下, C-k 删除当前行光标后的内容。
 :nvi "C-e" #'doom/forward-to-last-non-comment-or-eol ; 在正常、可视、插入模式下, C-e 去到行尾。
 :nvi "M-;" #'comment-dwim ; 在正常、可视、插入模式下, M-; 在行尾添加注释。s-/  是对整行或选中区域进行注释或取消注释。
 :nvi "s-/" #'comment-line ; S代表Shift键盘；s代表Command键，默认s-/绑定到evilnc-comment-or-uncomment-lines， 感觉没comment-line好用
 :nvi "C-n" #'next-line
 :nvi "C-p" #'previous-line
 )
(map! :leader
      :prefix ("e" . "edit")
      :desc "Expand region" "v" #'er/expand-region)
;; end keymap
