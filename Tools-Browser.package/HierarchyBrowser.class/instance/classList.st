class list
classList
	classDisplayList := classDisplayList select: [:each | (self environment valueOf: each withBlanksTrimmed asSymbol) notNil].
	^ classDisplayList