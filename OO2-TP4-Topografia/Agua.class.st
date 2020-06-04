Class {
	#name : #Agua,
	#superclass : #Topografia,
	#category : #'OO2-TP4-Topografia-Model'
}

{ #category : #comparing }
Agua >> = unaTopografia [ 

^unaTopografia igualAAgua.
]

{ #category : #calculating }
Agua >> calcularProporcionAgua [
^1
]

{ #category : #'as yet unclassified' }
Agua >> igualAAgua [

^true
]

{ #category : #'as yet unclassified' }
Agua >> igualATierra [

^false
]
