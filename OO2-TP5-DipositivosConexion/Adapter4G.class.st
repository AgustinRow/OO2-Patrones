Class {
	#name : #Adapter4G,
	#superclass : #Connection,
	#instVars : [
		'connection4G'
	],
	#category : #'OO2-TP5-DipositivosConexion-Model'
}

{ #category : #accessing }
Adapter4G >> connection4G [
^connection4G
]

{ #category : #accessing }
Adapter4G >> pict [
^connection4G symbol
]

{ #category : #'as yet unclassified' }
Adapter4G >> send: aString data: anInteger [ 
self connection4G transmit: aString data: anInteger 
]
