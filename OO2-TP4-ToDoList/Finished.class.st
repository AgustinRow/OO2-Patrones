Class {
	#name : #Finished,
	#superclass : #ToDoItem,
	#category : #'OO2-TP4-ToDoList-Model'
}

{ #category : #adding }
Finished >> addComment: aComment [
]

{ #category : #accessing }
Finished >> workedTime: aToDoList [ 
^aToDoList timestan
]
