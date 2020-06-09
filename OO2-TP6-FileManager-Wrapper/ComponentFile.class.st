Class {
	#name : #ComponentFile,
	#superclass : #Object,
	#category : #'OO2-TP6-FileManager-Wrapper'
}

{ #category : #accessing }
ComponentFile >> extension [
^self subclassResponsibility 
]

{ #category : #accessing }
ComponentFile >> fechaCreacion [ 
^self subclassResponsibility 
]

{ #category : #accessing }
ComponentFile >> fechaModificacion [ 
^self subclassResponsibility 
]

{ #category : #accessing }
ComponentFile >> nombre [
^self subclassResponsibility 
]

{ #category : #accessing }
ComponentFile >> permisos [
^self subclassResponsibility 
]

{ #category : #'menu commands' }
ComponentFile >> prettyPrint [
^self subclassResponsibility 
]

{ #category : #accessing }
ComponentFile >> tamaño [ 
^self subclassResponsibility 
]
