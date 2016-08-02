;;; packages.el --- my_clojure_layer layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author:  <daljeet@archer2>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `my_clojure_layer-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `my_clojure_layer/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `my_clojure_layer/pre-init-PACKAGE' and/or
;;   `my_clojure_layer/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst my_clojure_layer-packages
  '(
    cider
    paredit
;;    auctex
    )
  ) 

;; List of packages to exclude.

;; For each package, define a function avy/init-<package-name>
;;
(defun my_clojure_layer/init-cider ()
  (use-package cider)
  "Initialize my package"
  )
(defun my_clojure_layer/init-paredit()
  (use-package paredit)
  "Initialize my package"
  )

;;(defun my_clojure_layer/init-auctex()
;;  (use-package auctex)
;;  "Initialize my package"
;;  )

  "The list of Lisp packages required by the my_clojure_layer layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format"


;;; packages.el ends here
