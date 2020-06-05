Class {
	#name : #Conn4G,
	#superclass : #Object,
	#instVars : [
		'symbol'
	],
	#category : #'OO2-TP5-DipositivosConexion-Model'
}

{ #category : #'as yet unclassified' }
Conn4G >> initialize [
symbol:= '4GConnection'
]

{ #category : #accessing }
Conn4G >> symbol [ 
^symbol
]

{ #category : #'as yet unclassified' }
Conn4G >> transmit: aString data: anInteger [ 
|stream|
stream:= WriteStream on: String new.
stream <<'WifiConnfig sent: '.
stream << aString.
stream <<'with crcNumber:  '.
stream << anInteger asString.
Transcript show: (stream contents).
]
