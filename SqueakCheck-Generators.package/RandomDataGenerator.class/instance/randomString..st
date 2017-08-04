generators
randomString: anIterationProgress
        | stream stringLength |

        stringLength := rng nextInt: (self moderateComplexity: anIterationProgress).
        stream := WriteStream on: (WideString new: stringLength).
        stringLength timesRepeat: [stream nextPut: (self randomCharacter: anIterationProgress)].
        ^ stream contents.