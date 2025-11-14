;;; ttfl.el --- Essentials for a pleasant Emacs experience          -*- lexical-binding: t; -*-

;;; Copyright © technosophist

;;; This program is free software: you can redistribute it and/or modify it under the terms of the
;;; GNU General Public License as published by the Free Software Foundation, either version 3 of the
;;; License, or (at your option) any later version.

;;; This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
;;; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See
;;; the GNU General Public License for more details.

;;; You should have received a copy of the GNU General Public License along with this program.  If
;;; not, see <https://www.gnu.org/licenses/>.

;;; Author: technosophist <technosophist@thoughtfull.systems>

;;; Commentary:

;;; Configure Emacs to my liking.  Configuration should be deferred.  I include customization for
;;; optional packages that may or may not be installed.  When a package is installed, it will be
;;; properly configured.  When it is not installed, the configuration is never run.

;;; Code:
(setq custom-file (concat user-emacs-directory "custom.el"))
(load custom-file 'noerror 'nomessage 'nosuffix)

(provide 'ttfl)
;;; ttfl.el ends here
