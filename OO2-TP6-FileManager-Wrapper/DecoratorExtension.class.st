Class {
	#name : #DecoratorExtension,
	#superclass : #DecoratorFile,
	#category : #'OO2-TP6-FileManager-Wrapper'
}

{ #category : #'menu commands' }
DecoratorExtension >> prettyPrint [
	^ super prettyPrint , (self concatena: self extension)
]
