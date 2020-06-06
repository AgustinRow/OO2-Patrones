Class {
	#name : #DatabaseRealAcessProxy,
	#superclass : #DatabaseAccess,
	#instVars : [
		'realDataBase',
		'authentication'
	],
	#category : #'OO2-TP6-Proxy'
}

{ #category : #'instance creation' }
DatabaseRealAcessProxy class >> newProxyWith: aDataBase andUserAuthentication: anUserAuthentication [
	^self new
		initializeWithDataBase: aDataBase
			andUserAuthentication: anUserAuthentication;
		yourself
]

{ #category : #'as yet unclassified' }
DatabaseRealAcessProxy >> checkAccess [

^authentication  authenticated. 
]

{ #category : #'as yet unclassified' }
DatabaseRealAcessProxy >> getSearchResults: queryString [
	"returns a dataTable with the results of the strings."

	self checkAccess
		ifTrue: [ ^realDataBase getSearchResults: queryString ]
		ifFalse: [ ^self messageError  ]
]

{ #category : #initialization }
DatabaseRealAcessProxy >> initializeWithDataBase: aDataBase andUserAuthentication: anUserAuthentication [ 

authentication := anUserAuthentication.
realDataBase := aDataBase 
]

{ #category : #'as yet unclassified' }
DatabaseRealAcessProxy >> insertNewRow: rowData [
	"Inserts in the database the row data"

	self checkAccess
		ifTrue: [ ^realDataBase insertNewRow: rowData ]
		ifFalse: [ ^self messageError ]
]

{ #category : #'as yet unclassified' }
DatabaseRealAcessProxy >> messageError [
^self error: 'User is not Authenticated'
]
