;;; hyperstitional-themes-glare-solar-theme.el --- Digital Bug -*- lexical-binding: t; -*-

;; Copyright (C) 2026 precompute

;; Author: precompute <git@precompute.net>
;; URL: https://github.com/precompute/hyperstitional-themes
;; Created: September 12, 2026
;; Modified: September 12, 2026
;; Version: 1.0.0

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;; Digital Bug

;;; Code:
(require 'hyperstitional-themes)

(deftheme hyperstitional-themes-glare-solar
  "Digital Bug."
  :background-mode 'light
  :kind 'color-scheme
  :family 'hyperstitional-themes-glare)

(let* ((alphalist '(1.0 0.95 0.89 0.77 0.65 0.34 0.18))
       (background "#b0b0b0")
       (r (hyperstitional-themes-generate-color-range "#ffffff" alphalist background))
       (g (hyperstitional-themes-generate-color-range "#ff4400" alphalist background))
       (b (hyperstitional-themes-generate-color-range "#0044ff" alphalist background))
       (w (hyperstitional-themes-generate-color-range "#fcec22" alphalist background)))
  (hyperstitional-themes-rebug-generate
   'hyperstitional-themes-glare-solar
   r g b w background))

(provide-theme 'hyperstitional-themes-glare-solar)

;;; hyperstitional-themes-glare-solar-theme.el ends here
