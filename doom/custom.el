(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("9d29a302302cce971d988eb51bd17c1d2be6cd68305710446f658958c0640f68" "9e1cf0f16477d0da814691c1b9add22d7cb34e0bb3334db7822424a449d20078" "014cb63097fc7dbda3edf53eb09802237961cbb4c9e9abd705f23b86511b0a69" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "93011fe35859772a6766df8a4be817add8bfe105246173206478a0706f88b33d" "ffafb0e9f63935183713b204c11d22225008559fa62133a69848835f4f4a758c" "00cec71d41047ebabeb310a325c365d5bc4b7fab0a681a2a108d32fb161b4006" "3de5c795291a145452aeb961b1151e63ef1cb9565e3cdbd10521582b5fd02e9a" "7e377879cbd60c66b88e51fad480b3ab18d60847f31c435f15f5df18bdb18184" "56044c5a9cc45b6ec45c0eb28df100d3f0a576f18eef33ff8ff5d32bac2d9700" "8c7e832be864674c220f9a9361c851917a93f921fedb7717b1b5ece47690c098" "e3daa8f18440301f3e54f2093fe15f4fe951986a8628e98dcd781efbec7a46f2" "75fb82e748f32de807b3f9e8c72de801fdaeeb73c791f405d8f73711d0710856" default))
 '(magit-todos-insert-after '(bottom) nil nil "Changed by setter of obsolete option `magit-todos-insert-at'")
 '(package-selected-packages '(impatient-mode company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode))

(use-package auctex
  :ensure t
  :hook
  (LaTeX-mode . turn-on-flyspell))

(defun markdown-html (buffer)
  (princ (with-current-buffer buffer
           (format "<!DOCTYPE html><html><title>Impatient Markdown</title><xmp theme=\"united\" style=\"display:none;\"> %s  </xmp><script src=\"http://ndossougbe.github.io/strapdown/dist/strapdown.js\"></script></html>" (buffer-substring-no-properties (point-min) (point-max))))
         (current-buffer)))
