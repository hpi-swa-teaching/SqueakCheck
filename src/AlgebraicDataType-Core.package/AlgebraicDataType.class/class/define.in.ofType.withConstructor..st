instance creation
define: className in: category ofType: superclass withConstructor: selector
	"Define a new class with superclass superclass.
	- Define a class-side constructor called selector. This calls out to a private instance-side initialiser.
	- Define instvars by deconstructing selector - #a:b:c: will define instvars 'a b c'.
	- Define accessors for those instvars.
	- Return the new class."
	| newClass varNames |
	selector numArgs = 0 ifTrue: [Error signal: 'Selector must have arity > 0'].
	varNames := selector allButLast splitBy: #:.
	newClass := superclass
		subclass: className
		instanceVariableNames: (varNames reduce: [:acc :each | acc, ' ', each asString])
		classVariableNames: ''
		poolDictionaries: ''
		category: category.
	"Type constructor"
	newClass class compile: (self constructorFor: selector).
	newClass class organization addCategory: 'instance creation'.
	newClass class organization classify: selector under: 'instance creation'.
	"Accessors"
	newClass organization addCategory: 'accessing'.
	varNames do: [:each |
		newClass compile: (self accessorFor: each).
		newClass organization classify: each under: 'accessing'].
	"Initialiser"
	newClass organization addCategory: 'private'.
	newClass compile: (self initialiserFor: selector).
	newClass organization classify: selector under: 'private'.
	^ newClass.