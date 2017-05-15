SqueakCheck is a port of Haskell's QuickCheck.

QuickCheck provides several independent features:
* an easily extensible test data generator
* a test runner that takes "properties" - single-parameter blocks - and spits out results. In particular, it prints out counterexamples to your supposedly invariant properties.
* Haskell's type system provides _type reconstruction_, where how you define your property will automatically cause the use of the correct data generator.

JUnit 4.0 provides precisely the same "properties" feature - an @Theory takes data from an @Data source, and a custom test runner repeatedly feeds data until the Theory fails.

In SqueakCheck, use a TheoryTestCase to define your theories - as marked by the <theory> or <theoryTaking: #ClassName> pragmas - and run those through the normal SUnit TestRunner.

Using a <theory>, SqueakCheck will attempt to AUTOMATICALLY discover data from the image, by instantiating classes that understand the messages sent to a theory's argument (both instance and class side). You might need to add custom #dataFrom: methods on your classes; see the generators themselves, or Complex and ScaledDecimal for examples of how to do this. (You'll know to do this if your test fails with a datum with an unexpected class: your test will have invoked Object class >> #dataFrom:.)