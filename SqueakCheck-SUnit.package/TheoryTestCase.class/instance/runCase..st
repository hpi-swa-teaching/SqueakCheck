running
runCase: someObjects
	"Run this TestCase. Time out if the test takes too long."
	"This method is (or should be) identical to super runCase, except for the parameterised #performTest:."

	[self timeout: [self setUp]
		after: self timeoutForSetUp.
	self timeout: [self performTest: someObjects]
		after: self timeoutForTest]
		ensure: [self tearDown].