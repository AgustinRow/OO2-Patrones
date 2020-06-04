Class {
	#name : #NeoExporter,
	#superclass : #Object,
	#category : #'OO2-TP4-Biblioteca-Model'
}

{ #category : #exporting }
NeoExporter >> export: socios [

^NeoJSONWriter toStringPretty: (self exportSocio: socios).
]

{ #category : #'as yet unclassified' }
NeoExporter >> exportSocio: socios [
	^ socios
		collect: [ :each | 
			Dictionary new
				at: #nombre put: each nombre;
				at: #email put: each email;
				at: #legajo put: each legajo;
				yourself ]
]
