Class {
	#name : #'DecoratorTamaño',
	#superclass : #DecoratorFile,
	#category : #'OO2-TP6-FileManager-Wrapper'
}

{ #category : #'menu commands' }
DecoratorTamaño >> prettyPrint [
	^ super prettyPrint , (self concatena: self tamaño)
]
