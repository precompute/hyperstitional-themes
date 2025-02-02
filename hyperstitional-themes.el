;;; hyperstitional-themes.el --- Weird themes with incremental palettes -*- lexical-binding: t; -*-

;; Copyright (C) 2024 precompute

;; Author: precompute <git@precompute.net>
;; URL: https://github.com/precompute/hyperstitional-themes
;; Created: April 16, 2024
;; Modified: May 28, 2024
;; Version: 1.2
;; Package-Requires: ((emacs "24.1"))

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

;; These themes are mostly experimental, and might be legible.

;; Monospace fonts are boring -- they make my eyes sore.

;;; Code:

(defgroup hyperstitional-themes-digitalsear ()
  "Group for hyperstitional-theme-digitalsear."
  :group 'hyperstitional-themes-digitalsear-faces)

(defgroup hyperstitional-themes-digitalsear-inverted ()
  "Group for hyperstitional-theme-digitalsear-inverted."
  :group 'hyperstitional-themes-digitalsear-inverted-faces)

(defgroup hyperstitional-themes-screenshy ()
  "Group for hyperstitional-theme-screenshy."
  :group 'hyperstitional-themes-screenshy-faces)

(defgroup hyperstitional-themes-screenshy-bright ()
  "Group for hyperstitional-theme-screenshy-bright."
  :group 'hyperstitional-themes-screenshy-bright-faces)

;;;###autoload
(add-to-list
 'custom-theme-load-path
 (if load-file-name (file-name-directory load-file-name) default-directory))

(provide 'hyperstitional-themes)

;;; hyperstitional-themes.el ends here
