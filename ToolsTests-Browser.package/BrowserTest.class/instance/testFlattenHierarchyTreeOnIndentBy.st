as yet unclassified
testFlattenHierarchyTreeOnIndentBy
	| flatten |
	flatten := [:coll | (browser
		flattenHierarchyTree: (browser createHierarchyTreeOf: coll)
		on: OrderedCollection new
		indent: ''
		by: 'x') asArray ].
	"Empty collection."
	self assert: (flatten value: #()) isEmpty.
	"Single class."
	self assert: #('Browser') equals: (flatten value: {Browser}).
	"Single class + subclass."
	self assert: #('Browser' 'xHierarchyBrowser') equals: (flatten value: {Browser. HierarchyBrowser}).
	"Single class + 2 subclasses"
	self assert: #('Browser' 'xHierarchyBrowser' 'xFileContentsBrowser') equals: (flatten value: { Browser. HierarchyBrowser. FileContentsBrowser. }).
	"Superclass, class, subclass"
	self assert: #('CodeHolder' 'xBrowser' 'xxHierarchyBrowser') equals: (flatten value: { CodeHolder. Browser. HierarchyBrowser. }).
	"Two 'unrelated' classes"
	self assert: #('Browser' 'SmallInteger') equals: (flatten value: { Browser. SmallInteger }).
	"Two 'unrelated' classes and a common ancestor"
	self assert: #('Browser' 'SmallInteger' 'ProtoObject') equals: (flatten value: { Browser. SmallInteger. ProtoObject }).