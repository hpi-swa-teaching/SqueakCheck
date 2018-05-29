instance creation
define: className in: category
	"Define the root class of an algebraic data type.
	- Return the new class."
	^ AlgebraicDataType
		subclass: className
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: category.