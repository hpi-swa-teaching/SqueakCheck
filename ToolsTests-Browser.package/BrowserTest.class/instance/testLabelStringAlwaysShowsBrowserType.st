as yet unclassified
testLabelStringAlwaysShowsBrowserType
	browser selectSystemCategory: browser class category.
	self assert: (browser labelString includesSubstring: 'System Browser').
	browser selectClass: browser class.
	self assert: (browser labelString includesSubstring: 'System Browser').
	browser selectSystemCategory: DependencyBrowser category.
	browser selectClass: DependencyBrowser.
	self assert: (browser labelString includesSubstring: 'System Browser').