Class {
	#name : #TopografiaCompuesta,
	#superclass : #Topografia,
	#instVars : [
		'topografias'
	],
	#category : #'OO2-TP4-Topografia-Model'
}

{ #category : #'instance creation' }
TopografiaCompuesta class >> new: first with: second with: third and: fourth [ 
^self new topografiasWith: first with: second with: third with: fourth; yourself
]

{ #category : #initialize }
TopografiaCompuesta >> = unaTopografia [

	^unaTopografia igualATopografiaCompuesta: self 
]

{ #category : #calculating }
TopografiaCompuesta >> calcularProporcionAgua [ 
^(topografias inject: 0 into:[:sum :each | sum  + each calcularProporcionAgua ] ) / 4
]

{ #category : #'as yet unclassified' }
TopografiaCompuesta >> igualATopografiaCompuesta: unaTopografia [ 

^self topografias = unaTopografia topografias.
]

{ #category : #accessing }
TopografiaCompuesta >> topografias [
^topografias 
]

{ #category : #initialize }
TopografiaCompuesta >> topografiasWith: first with: second with: third with: fourth [

topografias := OrderedCollection with: first  with: second with: third   with:  fourth 
]
