Class {
	#name : #Connection,
	#superclass : #Object,
	#instVars : [
		'pict'
	],
	#category : #'OO2-TP5-DipositivosConexion-Model'
}

{ #category : #'as yet unclassified' }
Connection >> send: aString data: anInteger [ 
^self subclassResponsibility 
]
