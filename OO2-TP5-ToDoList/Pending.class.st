Class {
	#name : #Pending,
	#superclass : #State,
	#category : #'OO2-TP5-ToDoList-Model'
}

{ #category : #accessing }
Pending >> start: aToDoList [ 
aToDoList state: (InProgress new ).
aToDoList initializeTime
]

{ #category : #accessing }
Pending >> workedTime: aToDoList [ 
self error: 'El objeto ToDoItem no ha comenzado aun'
]
