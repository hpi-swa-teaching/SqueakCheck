instance creation
apply: aCollection
	self assertCorrectSize: aCollection.
	self assertCorrectTag: aCollection.
	^ self new.