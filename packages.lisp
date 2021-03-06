(in-package :cl-user)

(defpackage :helpers
  (:use :cl)
  (:export :radians
           :make-regular-symbol
           :delimited-read
           :make-keyword
           :mouse-left-p
           :mouse-right-p))

(defpackage :v ; vectors
  (:use :helpers :cl)
  (:shadow cl:+ cl:-)
  (:export :x
           :y
           :z
           :make-vector
           :+
           :-
           :*.
           :normalize
           :cross
           :mag))

(defpackage :m ; matrices
  (:use :cl :helpers)
  (:export :translate
           :rotate
           :scale
           :identity-matrix
           :do-matrix
           :transpose
           :*-mat-mat
           :*-mat-num
           :+-mat
           :set-mat-row
           :mat-4
           :look-at
           :perspective
           :matrix-row
           :coerce-matrix
           :coerce-vector
           :flatten
           :matrix-col))

(defpackage :camera
  (:use :cl :helpers)
  (:export :camera
           :flying-camera
           :view-camera
           :cam-pivot-point
           :cam-eye
           :cam-center
           :cam-up
           :cam-fovy
           :cam-view
           :move-forward
           :move-side
           :move-vertical
           :rotate-yaw
           :rotate-pitch
           :rotate-roll
           :with-old-parameters
           :cam-aspect
           :cam-znear
           :cam-zfar
           :cam-model-view-matrix
           :cam-projection-matrix
           :update-matrices))

(defpackage :resource
  (:use :cl :helpers)
  (:export :resource
           :resource-name))

(defpackage :mesh
  (:use :cl :helpers :resource)
  (:export :mesh
           :vertex-buffer-id
           :normal-buffer-id
           :verts-count
           :load-mesh))

(defpackage :obj-loader
  (:use :cl :helpers)
  (:export :load-mesh-from-file
           :load-mesh-from-lists))

(defpackage :texture
  (:use :cl :helpers :resource)
  (:export :texture
           :tex-type
           :tex-data
           :tex-bpp
           :tex-width
           :tex-height
           :load-from-file))

(defpackage :shader
  (:use :cl :helpers :resource)
  (:export :shader-program
           :program-id
           :set-shader
           :compile-program))

(defpackage :light-source
  (:use :cl :helpers :resource)
  (:shadow cl:position)
  (:export :omni
           :position
           :color))

(defpackage :material
  (:use :cl :helpers :resource)
  (:export :material
           :ambient
           :diffuse
           :specular
           :emission
           :shininess))

(defpackage :state
  (:use :cl :helpers)
  (:shadow cl:get)
  (:export :state
           :add
           :get
           :use-shader-program
           :use-default-program
           :render-mesh
           :state-vao))

(defpackage :procedural
  (:use :cl :helpers)
  (:export :hexagonal-grid
           :icosahedron))

(defpackage :ripple
  (:use :cl :cl-opengl :helpers)
  (:export :main-loop))
