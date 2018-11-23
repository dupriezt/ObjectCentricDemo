Class {
	#name : #Deck,
	#superclass : #Object,
	#instVars : [
		'cards'
	],
	#category : #ObjectCentricDemo
}

{ #category : #'instance creation' }
Deck class >> newWith54Cards [
	| cards deck |
	deck := self new.
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

{ #category : #accessing }
Deck >> cards [
	^ cards
]

{ #category : #accessing }
Deck >> cards: anObject [
	cards := anObject
]

{ #category : #'as yet unclassified' }
Deck >> randomCard [
	| index |
	index := Random new useClockBasedSeed nextInt: (self cards size).
	^ self cards at: index.
]
