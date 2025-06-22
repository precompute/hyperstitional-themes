;;; hyperstitional-themes-rebug-flipped-theme.el --- Digital Bug, Flipped. -*- lexical-binding: t; -*-

;; Copyright (C) 2025 precompute

;; Author: precompute <git@precompute.net>
;; URL: https://github.com/precompute/hyperstitional-themes
;; Created: June 12, 2024
;; Modified: June 22, 2025
;; Version: 2.7.5

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
;; Digital Bug, Flipped.

;;; Code:
(require 'hyperstitional-themes)

(deftheme hyperstitional-themes-rebug-flipped
  "Digital Bug, Flipped."
  :background-mode 'dark
  :kind 'color-scheme
  :family 'hyperstitional-themes-rebug)

(let* ((alphalist '(1.0 0.873 0.728 0.582 0.436 0.291 0.145))
       (background "#000000")
       (r (hyperstitional-themes-generate-color-range "#e11e2c" alphalist background))
       (g (hyperstitional-themes-generate-color-range "#73c242" alphalist background))
       (b (hyperstitional-themes-generate-color-range "#0c44fb" alphalist background))
       (w (hyperstitional-themes-generate-color-range "#ffffff" alphalist background)))
  (hyperstitional-themes-rebug-generate
   'hyperstitional-themes-rebug-flipped
   r g b w background))

(provide-theme 'hyperstitional-themes-rebug-flipped)

;;; hyperstitional-themes-rebug-flipped-theme.el ends here
