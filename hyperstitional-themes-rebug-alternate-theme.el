;;; hyperstitional-themes-rebug-alternate-theme.el --- Digital Bug -*- lexical-binding: t; -*-

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
;; Digital Bug, Alternate Version.

;;; Code:
(require 'hyperstitional-themes)

(deftheme hyperstitional-themes-rebug-alternate
  "Digital Bug."
  :background-mode 'light
  :kind 'color-scheme
  :family 'hyperstitional-themes-rebug)

(let* ((alphalist '(1.0 0.95 0.89 0.77 0.65 0.54 0.15))
       (background "#ffffff")
       (r (hyperstitional-themes-generate-color-range "#a301ff" alphalist background))
       (g (hyperstitional-themes-generate-color-range "#00eae1" alphalist background))
       (b (hyperstitional-themes-generate-color-range "#ffc400" alphalist background))
       (w (hyperstitional-themes-generate-color-range "#000000" alphalist background)))
  (hyperstitional-themes-rebug-generate
   'hyperstitional-themes-rebug-alternate
   r g b w background))

(provide-theme 'hyperstitional-themes-rebug-alternate)

;;; hyperstitional-themes-rebug-alternate-theme.el ends here
