assertion
assertCorrectOrderOf: classB followedBy: classA in: classCollection

	"classB comes before classA. Assert that classB is a superclass of classB or that 
	a common superclass is in front of both"
	| commonSuperclasses commonSuperclass classAIndex classBIndex superIndex |
	classA == classB ifTrue: [^ self].
	(classA inheritsFrom: classB) ifTrue: [^ self].
	commonSuperclasses := classA withAllSuperclasses intersection: classB withAllSuperclasses.
	commonSuperclass := commonSuperclasses first.
	(classCollection includes: commonSuperclass) ifFalse: [^ self].
	classAIndex := classCollection indexOf: classA.
	classBIndex := classCollection indexOf: classB.
	superIndex := classCollection indexOf: commonSuperclass.
	(superIndex < classAIndex and: [superIndex < classBIndex]) ifTrue: [^self].
	self fail.