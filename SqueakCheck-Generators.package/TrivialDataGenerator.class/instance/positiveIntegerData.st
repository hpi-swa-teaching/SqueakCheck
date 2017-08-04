generators
positiveIntegerData

	^ self integerData abs reject: [:each | each < 1].