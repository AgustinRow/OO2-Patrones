Class {
	#name : #Adapter4G,
	#superclass : #Connection,
	#instVars : [
		'adaptee4G'
	],
	#category : #'OO2-TP5-DipositivosConexion-Model'
}

{ #category : #accessing }
Adapter4G >> connection4G [
^adaptee4G
]

{ #category : #initialization }
Adapter4G >> initialize [ 
adaptee4G:= Conn4G new.
]

{ #category : #accessing }
Adapter4G >> pict [
^adaptee4G symbol
]

{ #category : #'as yet unclassified' }
Adapter4G >> send: aString data: anInteger [ 
self connection4G transmit: aString data: anInteger 
]
