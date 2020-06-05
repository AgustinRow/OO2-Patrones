Class {
	#name : #CrcCalculator,
	#superclass : #Object,
	#category : #'OO2-TP5-DipositivosConexion-Model'
}

{ #category : #accessing }
CrcCalculator >> crcFor: aString [ 
^self subclassResponsibility 
]
