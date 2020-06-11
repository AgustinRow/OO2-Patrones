Class {
	#name : #DecoratorFechaCreacion,
	#superclass : #DecoratorFile,
	#category : #'OO2-TP6-FileManager-Wrapper'
}

{ #category : #accessing }
DecoratorFechaCreacion >> prettyPrint [
	^ component prettyPrint , (self concatena: self fechaCreacion asDate )
]

{ #category : #'as yet unclassified' }
DecoratorFechaCreacion >> printMySelf [
^self fechaCreacion 
]
