Class {
	#name : #Elemento,
	#superclass : #Object,
	#instVars : [
		'fecha',
		'nombre',
		'tamaño'
	],
	#category : #'OO2-TP4-FileSystem-Model'
}

{ #category : #'as yet unclassified' }
Elemento class >> llamado: unString creadoEl: unaFecha kBytes: unNumero [
	^ self new
		nombre: unString fecha: unaFecha tamaño: unNumero;
		yourself
]

{ #category : #initialization }
Elemento >> fecha [
^fecha
]

{ #category : #initialization }
Elemento >> nombre: unNombre fecha:unaFecha tamaño: unTamaño [

nombre:= unNombre .
fecha:= unaFecha asDate .
tamaño:= unTamaño 
]

{ #category : #accessing }
Elemento >> seCuentaParaListar [
^self subclassResponsibility 
]

{ #category : #streams }
Elemento >> subDirectorio: unStream [
^self subclassResponsibility 
]

{ #category : #accessing }
Elemento >> tamaño [ 
^tamaño
]

{ #category : #public }
Elemento >> tamañoTotalOcupado [ 
^self subclassResponsibility 
]
