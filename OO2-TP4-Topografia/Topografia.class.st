Class {
	#name : #Topografia,
	#superclass : #Object,
	#instVars : [
		'value'
	],
	#category : #'OO2-TP4-Topografia-Model'
}

{ #category : #comparing }
Topografia >> = unaTopografia [

^self subclassResponsibility 
]

{ #category : #calculating }
Topografia >> calcularProporcionAgua [
^self subclassResponsibility 
]

{ #category : #calculating }
Topografia >> calcularProporcionDeTierra [ 
^(1- self calcularProporcionAgua) 
]

{ #category : #'as yet unclassified' }
Topografia >> igualATopografiaCompuesta: unaTopografia [ 

^false
]
