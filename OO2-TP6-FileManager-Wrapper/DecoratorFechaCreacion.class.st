Class {
	#name : #DecoratorFechaCreacion,
	#superclass : #DecoratorFile,
	#category : #'OO2-TP6-FileManager-Wrapper'
}

{ #category : #accessing }
DecoratorFechaCreacion >> prettyPrint [
	^ super prettyPrint , (self concatena: self fechaCreacion asDate )
]
