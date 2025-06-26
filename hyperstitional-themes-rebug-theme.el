;;; hyperstitional-themes-rebug-theme.el --- Digital Bug -*- lexical-binding: t; -*-

;; Copyright (C) 2025 precompute

;; Author: precompute <git@precompute.net>
;; URL: https://github.com/precompute/hyperstitional-themes
;; Created: June 12, 2024
;; Modified: June 26, 2025
;; Version: 2.8.0

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

(deftheme hyperstitional-themes-rebug
  "Digital Bug."
  :background-mode 'light
  :kind 'color-scheme
  :family 'hyperstitional-themes-rebug)

(let* ((alphalist '(1.0 0.873 0.728 0.582 0.50 0.34 0.29))
       (background "#ffffff")
       (r (hyperstitional-themes-generate-color-range "#f02d38" alphalist background))
       (g (hyperstitional-themes-generate-color-range "#42bf00" alphalist background))
       (b (hyperstitional-themes-generate-color-range "#4453da" alphalist background))
       (w (hyperstitional-themes-generate-color-range "#000000" alphalist background)))
  (hyperstitional-themes-rebug-generate
   'hyperstitional-themes-rebug
   r g b w background))

;; (alphalist '(1.0 0.873 0.728 0.582 0.436 0.291 0.145))
;; ??
;; (alphalist '(1.0 0.94 0.85 0.76 0.68 0.62 0.56 0.50 0.46 0.41 0.38 0.34))
;; (map #(- (math/exp (math/exp (* % 0.1618))) 1) (range -2.5 -8 -0.5))

(provide-theme 'hyperstitional-themes-rebug)

;;; hyperstitional-themes-rebug-theme.el ends here
