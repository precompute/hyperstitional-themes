;;; hyperstitional-themes-rebug-alternate-flipped-theme.el --- Digital Bug, Flipped. Alternate Version.-*- lexical-binding: t; -*-

;; Copyright (C) 2025 precompute

;; Author: precompute <git@precompute.net>
;; URL: https://github.com/precompute/hyperstitional-themes
;; Created: June 12, 2024
;; Modified: June 27, 2025
;; Version: 3.0.0

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
;; Digital Bug, Flipped.  Alternate version.

;;; Code:
(require 'hyperstitional-themes)

(deftheme hyperstitional-themes-rebug-alternate-flipped
  "Digital Bug, Flipped."
  :background-mode 'dark
  :kind 'color-scheme
  :family 'hyperstitional-themes-rebug)

(let* ((alphalist '(1.0 0.873 0.728 0.582 0.436 0.291 0.145))
       (background "#000000")
       (r (hyperstitional-themes-generate-color-range "#9221e1" alphalist background))
       (g (hyperstitional-themes-generate-color-range "#3cc2bb" alphalist background))
       (b (hyperstitional-themes-generate-color-range "#fbcb2e" alphalist background));; "#fb772c"
       (w (hyperstitional-themes-generate-color-range "#ffffff" alphalist background)))
  (hyperstitional-themes-rebug-generate
   'hyperstitional-themes-rebug-alternate-flipped
   r g b w background))

(provide-theme 'hyperstitional-themes-rebug-alternate-flipped)

;;; hyperstitional-themes-rebug-alternate-flipped-theme.el ends here
