Class {
	#name : #WiFiConn,
	#superclass : #Connection,
	#category : #'OO2-TP5-DipositivosConexion-Model'
}

{ #category : #initialization }
WiFiConn >> initialize [ 
pict:= 'WiFiConnection'
]

{ #category : #accessing }
WiFiConn >> pict [
^pict
]

{ #category : #'as yet unclassified' }
WiFiConn >> send: aString data: anInteger [ 
"Do something"
|stream|
stream:= WriteStream on: String new.
stream <<'WifiConnfig sent: '.
stream << aString.
stream <<'with crcNumber:  '.
stream << anInteger asString .
Transcript show: (stream contents).
]
