Given a TheoryTestCase, I reconstruct the type needed by that theory, so that the test runner can automatically determine the appropriate data generator to use.

I do this by seeing what messages are sent to the theory's parameter, and returning the set of classes that understand all those messages.