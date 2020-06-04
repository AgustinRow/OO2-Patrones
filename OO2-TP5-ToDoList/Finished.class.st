Class {
	#name : #Finished,
	#superclass : #ToDoItem,
	#category : #'OO2-TP5-ToDoList-Model'
}

{ #category : #adding }
Finished >> addComment: aComment [
]

{ #category : #accessing }
Finished >> workedTime: aToDoList [ 
^aToDoList timestan
]
