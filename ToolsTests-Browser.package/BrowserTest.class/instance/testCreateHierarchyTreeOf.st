as yet unclassified
testCreateHierarchyTreeOf
	"Empty."
	self assert: (browser createHierarchyTreeOf: #()) isEmpty.
	"Single class."
	self assert: { Browser -> #() } = (browser createHierarchyTreeOf: { Browser }).
	"Single class + 1 subclass"
	self assert: { Browser->{HierarchyBrowser->#()} } = (browser createHierarchyTreeOf: { Browser. HierarchyBrowser. }).
	"Single class + 2 subclasses"
	self assert: { Browser->{HierarchyBrowser->#() . FileContentsBrowser->#()} } = (browser createHierarchyTreeOf: { Browser. HierarchyBrowser. FileContentsBrowser. }).
	"Superclass, class, subclass"
	self assert: { CodeHolder->{Browser->{HierarchyBrowser->#()}} } = (browser createHierarchyTreeOf: { CodeHolder. Browser. HierarchyBrowser. }).
	"Two 'unrelated' classes"
	self assert: {Browser->#() . SmallInteger->#()} = (browser createHierarchyTreeOf: { Browser. SmallInteger }).
	"Two 'unrelated' classes and a common ancestor"
	self assert: {Browser->#() . SmallInteger->#() . ProtoObject->#()} = (browser createHierarchyTreeOf: { Browser. SmallInteger. ProtoObject }).