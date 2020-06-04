Class {
	#name : #Biblioteca,
	#superclass : #Object,
	#instVars : [
		'socios',
		'exporter'
	],
	#category : #'OO2-TP4-Biblioteca-Model'
}

{ #category : #'as yet unclassified' }
Biblioteca class >> new: anExporter [

	^self new initialize: anExporter
	
]

{ #category : #socios }
Biblioteca >> agregarSocio: aSocio [ 
	socios add: aSocio.
]

{ #category : #accessing }
Biblioteca >> export: anObject [
	exporter := anObject
]

{ #category : #'as yet unclassified' }
Biblioteca >> exportarSocios [
"Retorna la representacion JSON de la coleccion de socios."


^ self exporter export:(self socios).
]

{ #category : #accessing }
Biblioteca >> exporter [
	^ exporter
]

{ #category : #initialization }
Biblioteca >> initialize [

	socios:= OrderedCollection new.
	exporter:= VoorheesExporter new.
]

{ #category : #initialization }
Biblioteca >> initialize: anExporter [

	socios:= OrderedCollection new.
	exporter:= anExporter.
]

{ #category : #accessing }
Biblioteca >> socios [
	^ socios
]

{ #category : #accessing }
Biblioteca >> socios: anObject [
	socios := anObject
]
