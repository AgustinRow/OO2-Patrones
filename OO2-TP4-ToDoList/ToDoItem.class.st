Class {
	#name : #ToDoItem,
	#superclass : #Object,
	#instVars : [
		'comment'
	],
	#category : #'OO2-TP4-ToDoList-Model'
}

{ #category : #accessing }
ToDoItem >> finish: aToDoList [ 
]

{ #category : #accessing }
ToDoItem >> start: aToDoList [ 

]

{ #category : #accessing }
ToDoItem >> tooglePause: aToDoList [  
self error: 'El objeto ToDoItem no se encuentra en pause o inProgress'
]

{ #category : #accessing }
ToDoItem >> workedTime: aToDoList [
^aToDoList myDuration 
]
