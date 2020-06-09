Class {
	#name : #DecoratorNombre,
	#superclass : #DecoratorFile,
	#category : #'OO2-TP6-FileManager-Wrapper'
}

{ #category : #'menu commands' }
DecoratorNombre >> prettyPrint [
		^ super prettyPrint , (self concatena: self nombre)
]
