as yet unclassified
testLabelStringShowsBrowsedClassName
	browser selectSystemCategory: DependencyBrowser category.
	browser selectClass: DependencyBrowser.
	self assert: (browser labelString includesSubstring: DependencyBrowser name).