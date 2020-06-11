Class {
	#name : #Directorio,
	#superclass : #Elemento,
	#instVars : [
		'contenido'
	],
	#category : #'OO2-TP4-FileSystem-Model'
}

{ #category : #'as yet unclassified' }
Directorio class >> llamado: unString creadoEl: unaFecha [
^self llamado: unString creadoEl: unaFecha kBytes: 32
]

{ #category : #public }
Directorio >> agregar: unElemento [

self contenido add: unElemento 
]

{ #category : #public }
Directorio >> archivoMasGrande [

^self contenido inject: (Archivo llamado: 'inicial' creadoEl:'2016-03-03'  kBytes: 0 )  into: [ :archivo :each | each compararTamañoCon: archivo ].
]

{ #category : #public }
Directorio >> archivoMasNuevo [
^self contenido inject: (Archivo llamado: 'inicial' creadoEl:'1900-03-03'  kBytes: 0 )  into: [ :archivo :each | each esMasNuevoQueOtro: archivo ]
]

{ #category : #comparing }
Directorio >> compararTamañoCon: unArchivo [
	^ self archivoMasGrande compararTamañoCon: unArchivo
]

{ #category : #accessing }
Directorio >> contenido [

^contenido 
]

{ #category : #comparing }
Directorio >> esMasNuevoQueOtro: unArchivo [
	^ self archivoMasNuevo esMasNuevoQueOtro: unArchivo
]

{ #category : #streams }
Directorio >> escribirCantidadDeArchivos: unNumero enStream: unStream [ 

unStream << ' ('.
unStream << unNumero  asString.
unStream << ' archivos)'.

^unStream 
]

{ #category : #initialization }
Directorio >> initialize [
contenido:= OrderedCollection new.

]

{ #category : #public }
Directorio >> listadoDeContenido [
	| unStream unPath |
	unStream := WriteStream on: String new.
	unPath  := WriteStream on: String new.
	^(self subDirectorio: unStream conPath: '').
	
]

{ #category : #streams }
Directorio >> miDireccion [
	^ ('/', self nombre) contents 
]

{ #category : #accessing }
Directorio >> nombre [ 
^nombre
]

{ #category : #accessing }
Directorio >> seCuentaParaListar [ 
^false
]

{ #category : #streams }
Directorio >> subDirectorio: unStream conPath: unPath [
	| cantArchivos |
	
	unStream size >0
		ifTrue: [ unStream cr ].
		
	unStream << unPath contents.
	unStream << self miDireccion.
	
	cantArchivos := self contenido
		count: [ :each | each seCuentaParaListar ].
	cantArchivos > 0
		ifTrue: [ (self escribirCantidadDeArchivos: cantArchivos enStream: unStream)
				contents ].
			
	self contenido
		do:
			[ :each | each subDirectorio: unStream conPath: (unPath, self miDireccion) ].
	^ unStream contents
]

{ #category : #accessing }
Directorio >> tamaño [ 
^super
]

{ #category : #public }
Directorio >> tamañoTotalOcupado [
^self contenido inject: 32 into: [ :suma :each | suma + each tamañoTotalOcupado  ] 
]
