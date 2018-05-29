instance creation
apply: aCollection
	self assertCorrectSize: aCollection.
	self assertCorrectTag: aCollection.
	^ self left: (Tree apply: aCollection second) right: (Tree apply: aCollection third).