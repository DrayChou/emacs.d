;;======================    基础配置开始     =====================
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(add-to-list 'load-path "~/.emacs.d/el-get/color-theme")
(add-to-list 'load-path "~/.emacs.d/el-get/color-theme/themes")
(add-to-list 'load-path "~/.emacs.d/manual/")
(setq default-directory "~/")

(unless (require 'el-get nil 'noerror)
  (With-Current-Buffer
      (Url-Retrieve-Synchronously
       "Https://Raw.Github.Com/Dimitri/El-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)
;;----------------------    基础设置结束    ---------------------


;;======================    斌哥配置开始     =====================
;; cedet
(add-to-list 'load-path
	     "~/.emacs.d/manual/cedet-1.1/common")
(load-file "~/.emacs.d/manual/cedet-1.1/common/cedet.el")
(global-ede-mode 1)
(semantic-load-enable-code-helpers)
(global-srecode-minor-mode 1)

;; ;; ecb
(add-to-list 'load-path
	     "~/.emacs.d/manual/ecb-2.40")
(require 'ecb)
(require 'ecb-autoloads)
(setq stack-trace-on-error nil)
(setq ecb-auto-activate t
      ecb-tip-of-the-day nil)

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

;; ;;;;窗口间切换  
(global-set-key [M-left]  'windmove-left)  
(global-set-key [M-right] 'windmove-right)  
(global-set-key [M-up]    'windmove-up)  
(global-set-key [M-down]  'windmove-down)  
  
 ;;;;show&hide window  
(global-set-key [M-f1] 'ecb-hide-ecb-windows)  
(global-set-key [M-f2] 'ecb-show-ecb-windows)  
    
;; ;;;; 使某一ecb窗口最大化  
(global-set-key (kbd "C-c 1") 'ecb-maximize-window-directories)  
(global-set-key (kbd "C-c 2") 'ecb-maximize-window-sources)  
(global-set-key (kbd "C-c 3") 'ecb-maximize-window-methods)  
(global-set-key (kbd "C-c 4") 'ecb-maximize-window-history)  
  
;; ;;;;恢复原始窗口布局  
(global-set-key (kbd "C-c 0") 'ecb-restore-default-window-sizes) 
;;----------------------    斌哥设置结束    ---------------------


;;======================    网易云音乐配置开始     =====================
(add-to-list 'load-path
	     "~/.emacs.d/manual/albin_music")
(require 'albin-music)
;;----------------------    网易云音乐设置结束    ---------------------


;;======================    系统配置开始     =====================
;; 以 y/n代表 yes/no
(fset 'yes-or-no-p 'y-or-n-p) 

;; 支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t) 

;; f4 to kill current buffer
(global-set-key [f4] 'kill-this-buffer)

;;写文件的编码方式
;;(set-buffer-file-coding-system 'gb2312)
(set-buffer-file-coding-system 'utf-8)

;;设置 tab 为4空格
(setq-default c-basic-offset 4)

;; ido
(require 'ido)
(ido-mode t)
;;----------------------    系统配置结束    ---------------------


;;======================    时间设置开始     =====================
;;时间显示设置
;;启用时间显示设置，在minibuffer上面的那个杠上（忘了叫什么来着）
(display-time-mode 1)
;;时间使用24小时制
(setq display-time-24hr-format t)
;;时间显示包括日期和具体时间
(setq display-time-day-and-date t)
;;时间栏旁边启用邮件设置
(setq display-time-use-mail-icon t)
;;时间的变化频率，单位多少来着？
(setq display-time-interval 10)
;;显示时间，格式如下
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
;;----------------------    时间设置结束    ---------------------


;;======================    显示设置开始     =====================
;; color-theme
;;(require 'color-theme)
;;(color-theme-initialize)
;;(color-theme-molokai)

;; 设置字体
;; 方法为: emacs->options->Set Default Font->"M-x describe-font"查看当前使用的字体名称、字体大小
(set-default-font " -bitstream-Courier 10 Pitch-normal-normal-normal-*-16-*-*-*-m-0-iso10646-1")

;; 显示行号
(global-linum-mode 1) 
(setq linum-format "%4d \u2502")

;; 显示括号匹配 
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; 在标题栏提示你目前在什么位置
(setq frame-title-format "威@%b") 
;;----------------------    显示设置结束    ---------------------


;;======================    开发语言配置开始     =====================
(load "php-mode")
;;根据文件扩展名自动php-mode
(add-to-list 'auto-mode-alist '("\\.php[34]?\\'\\|\\.phtml\\'" . php-mode))
;;开发项目时，php源文件使用其他扩展名
(add-to-list 'auto-mode-alist '("\\.module\\'" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc\\'" . php-mode))
(add-to-list 'auto-mode-alist '("\\.php\.*\\'" . php-mode))

(load "markdown-mode")
;;根据文件扩展名自动markdown-mode
(add-to-list 'auto-mode-alist '("\\.md\\|\\.markdown\\'" . markdown-mode))

(setq auto-insert-query nil) 
(define-auto-insert "\\.org" "org-auto-insert")
(define-auto-insert "\\.c" "c-auto-insert")
(define-auto-insert "\\.js" "js-auto-insert")
(define-auto-insert "\\.cs" "csharp-auto-insert")
;;----------------------    开发语音配置结束    ---------------------
