generators
randomString: anIterationProgress
        | stream t |

        t := rng nextInt: (self moderateComplexity: anIterationProgress).
        stream := WriteStream on: (WideString new: t).
        t timesRepeat: [stream nextPut: (self randomCharacter: anIterationProgress)].
        ^ stream contents.