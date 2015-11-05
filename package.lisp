;;;; package.lisp
(in-package :cl-user)

(defpackage :whitespace.tables
  (:use #:cl #:alexandria #:postmodern #:annot.class #:iterate #:fwoar.lisputils))

(defpackage :whitespace.feeds.autodiscovery
  (:use #:cl #:alexandria #:postmodern #:lquery #:cl-syntax #:cl-annot.syntax #:cl-annot.class
        #:whitespace.tables #:iterate #:fwoar.lisputils)
  (:import-from anaphora it)
  (:export :discover-feeds))

(defpackage :whitespace.feeds.opml
  (:use #:cl #:alexandria #:postmodern #:lquery #:cl-syntax #:cl-annot.syntax #:cl-annot.class
        #:whitespace.tables #:iterate #:fwoar.lisputils)
  (:import-from anaphora it))

(defpackage :whitespace.feeds.rss
  (:use #:cl #:alexandria #:postmodern #:lquery #:cl-syntax #:cl-annot.syntax #:cl-annot.class
        #:whitespace.tables #:iterate #:fwoar.lisputils #:whitespace.feeds.autodiscovery)
  (:import-from anaphora it)
  (:export :get-elements :get-elements-by-tagname :extract-text :xml-text-bind :upsert-feed :deserialize
           :deserialize-feed :deserialize-items :deserialize-item :subscribe-to-feed :store-feed
           :make-rss-feed :make-rss-item))

(defpackage :whitespace
  (:use #:cl #:anaphora #:fwoar.lisputils #:whitespace.feeds.rss #:whitespace.tables))


