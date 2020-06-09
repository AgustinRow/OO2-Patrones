Class {
	#name : #DecoratorPermisos,
	#superclass : #DecoratorFile,
	#category : #'OO2-TP6-FileManager-Wrapper'
}

{ #category : #'menu commands' }
DecoratorPermisos >> prettyPrint [
	^ super prettyPrint , (self concatena: self permisos)
]
