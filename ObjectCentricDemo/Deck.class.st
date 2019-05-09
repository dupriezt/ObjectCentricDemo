Class {
	#name : #Deck,
	#superclass : #Object,
	#instVars : [
		'cards',
		'indexOfCurrentCard'
	],
	#classVars : [
		'printingProcesses'
	],
	#category : #ObjectCentricDemo
}

{ #category : #'instance creation' }
Deck class >> newWith54Cards [
	| cards deck |
	deck := self new.
	deck indexOfCurrentCard: 1.
	cards := LinkedList new.
	cards add: (Card newNamed: 'Ace of Spades').
	cards add: (Card newNamed: 'King of Spades').
	cards add: (Card newNamed: 'Queen of Spades').
	cards add: (Card newNamed: 'Jack of Spades').
	cards add: (Card newNamed: '10 of Spades').
	cards add: (Card newNamed: '9 of Spades').
	cards add: (Card newNamed: '8 of Spades').
	cards add: (Card newNamed: '7 of Spades').
	cards add: (Card newNamed: '6 of Spades').
	cards add: (Card newNamed: '5 of Spades').
	cards add: (Card newNamed: '4 of Spades').
	cards add: (Card newNamed: '3 of Spades').
	cards add: (Card newNamed: '2 of Spades').

	cards add: (Card newNamed: 'Ace of Clubs').
	cards add: (Card newNamed: 'King of Clubs').
	cards add: (Card newNamed: 'Queen of Clubs').
	cards add: (Card newNamed: 'Jack of Clubs').
	cards add: (Card newNamed: '10 of Clubs').
	cards add: (Card newNamed: '9 of Clubs').
	cards add: (Card newNamed: '8 of Clubs').
	cards add: (Card newNamed: '7 of Clubs').
	cards add: (Card newNamed: '6 of Clubs').
	cards add: (Card newNamed: '5 of Clubs').
	cards add: (Card newNamed: '4 of Clubs').
	cards add: (Card newNamed: '3 of Clubs').
	cards add: (Card newNamed: '2 of Clubs').

	cards add: (Card newNamed: 'Ace of Hearts').
	cards add: (Card newNamed: 'King of Hearts').
	cards add: (Card newNamed: 'Queen of Hearts').
	cards add: (Card newNamed: 'Jack of Hearts').
	cards add: (Card newNamed: '10 of Hearts').
	cards add: (Card newNamed: '9 of Hearts').
	cards add: (Card newNamed: '8 of Hearts').
	cards add: (Card newNamed: '7 of Hearts').
	cards add: (Card newNamed: '6 of Hearts').
	cards add: (Card newNamed: '5 of Hearts').
	cards add: (Card newNamed: '4 of Hearts').
	cards add: (Card newNamed: '3 of Hearts').
	cards add: (Card newNamed: '2 of Hearts').

	cards add: (Card newNamed: 'Ace of Diamonds').
	cards add: (Card newNamed: 'King of Diamonds').
	cards add: (Card newNamed: 'Queen of Diamonds').
	cards add: (Card newNamed: 'Jack of Diamonds').
	cards add: (Card newNamed: '10 of Diamonds').
	cards add: (Card newNamed: '9 of Diamonds').
	cards add: (Card newNamed: '8 of Diamonds').
	cards add: (Card newNamed: '7 of Diamonds').
	cards add: (Card newNamed: '6 of Diamonds').
	cards add: (Card newNamed: '5 of Diamonds').
	cards add: (Card newNamed: '4 of Diamonds').
	cards add: (Card newNamed: '3 of Diamonds').
	cards add: (Card newNamed: '2 of Diamonds').
	deck cards: cards.
	^ deck
]

{ #category : #'as yet unclassified' }
Deck class >> printingProcesses [
	printingProcesses ifNil: [ printingProcesses := LinkedList new ].
	^ printingProcesses
]

{ #category : #'as yet unclassified' }
Deck class >> stopAllPrintingProcesses [
	printingProcesses do: [ :printProcess | printProcess terminate ]
]

{ #category : #accessing }
Deck >> cards [
	^ cards
]

{ #category : #accessing }
Deck >> cards: anObject [
	cards := anObject
]

{ #category : #'as yet unclassified' }
Deck >> continuouslyPrintCardsToTranscript [
	Deck printingProcesses add: (
		[ [true] whileTrue: [self printNextCardToTranscript. (Delay forMilliseconds: 250) wait.]  ] fork
	)
]

{ #category : #accessing }
Deck >> indexOfCurrentCard [
	^ indexOfCurrentCard
]

{ #category : #accessing }
Deck >> indexOfCurrentCard: anObject [
	indexOfCurrentCard := anObject
]

{ #category : #printing }
Deck >> printNextCardToTranscript [
	(self cards at: (self indexOfCurrentCard)) logCardToTranscript.
	(self indexOfCurrentCard = self cards size)
		ifTrue: [ self indexOfCurrentCard: 1 ]
		ifFalse: [ self indexOfCurrentCard: (self indexOfCurrentCard +1) ]
]

{ #category : #'as yet unclassified' }
Deck >> randomCard [
	| index |
	index := Random new useClockBasedSeed nextInt: (self cards size).
	^ self cards at: index.
]

{ #category : #'as yet unclassified' }
Deck >> shuffle [
	| size newCardCollection randomCard |
	size := self cards size.
	newCardCollection := LinkedList new.
	[ self cards isNotEmpty ] whileTrue: [ 
		randomCard := self randomCard.
		newCardCollection add: randomCard.
		self cards remove: randomCard.
	].
	self cards: newCardCollection.
	self indexOfCurrentCard: 1.
	
]
