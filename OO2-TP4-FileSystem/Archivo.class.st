Class {
	#name : #Archivo,
	#superclass : #Elemento,
	#category : #'OO2-TP4-FileSystem-Model'
}

{ #category : #comparing }
Archivo >> compararTamañoCon: unArchivo [
	(self tamaño) > (unArchivo tamaño)
		ifTrue: [ ^ self ]
		ifFalse: [ ^ unArchivo ]
]

{ #category : #comparing }
Archivo >> esMasNuevoQueOtro: unArchivo [
	self fecha > unArchivo fecha
		ifTrue: [ ^self ]
		ifFalse: [ ^unArchivo  ]
]

{ #category : #comparing }
Archivo >> seCuentaParaListar [
^true
]

{ #category : #comparing }
Archivo >> subDirectorio: unStream [
^''
]

{ #category : #comparing }
Archivo >> subDirectorio: unStream conPath: unPath [ 
^''
]

{ #category : #accessing }
Archivo >> tamaño [ 
^tamaño
]

{ #category : #public }
Archivo >> tamañoTotalOcupado [ 
^self tamaño 
]
