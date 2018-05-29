testing
testStringProducesStrings
        | data |

        data := String dataFrom: generator.
        self assert: (data allSatisfy: [:each | each isString]).
        "Test that the data varies, even though we don't know what that variation looks like."
        self assert: (data collect: #size) range > 0.