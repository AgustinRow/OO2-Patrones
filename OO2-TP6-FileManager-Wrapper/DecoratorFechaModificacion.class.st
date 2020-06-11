Class {
	#name : #DecoratorFechaModificacion,
	#superclass : #DecoratorFile,
	#category : #'OO2-TP6-FileManager-Wrapper'
}

{ #category : #'menu commands' }
DecoratorFechaModificacion >> prettyPrint [ 
	^ super prettyPrint , (self concatena: self fechaModificacion asDate )
]

{ #category : #'as yet unclassified' }
DecoratorFechaModificacion >> printMySelf [
^self fechaModificacion 
]
