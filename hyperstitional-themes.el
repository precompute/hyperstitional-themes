;;; hyperstitional-themes.el --- Themes with weird colors -*- lexical-binding: t; -*-

;; Copyright (C) 2024 precompute

;; Author: precompute <git@precompute.net>
;; URL: https://github.com/precompute/hyperstitional-themes
;; Created: April 16, 2024
;; Modified: April 16, 2024
;; Version: 0.0.1
;; Package-Requires: ((emacs "26.1"))

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

;; These themes are mostly experimental, but they will be legible.

;; Monospace fonts are boring -- they make my eyes sore.

;;; Code:

(defgroup hyperstitional-themes-digitalsear ()
  "Group for hyperstitional-theme-digitalsear."
  :group 'hyperstitional-themes-digitalsear-faces)

;;;###autoload
(add-to-list
 'custom-theme-load-path
 (if load-file-name (file-name-directory load-file-name) default-directory))

(provide 'hyperstitional-themes)

;;; hyperstitional-themes.el ends here
