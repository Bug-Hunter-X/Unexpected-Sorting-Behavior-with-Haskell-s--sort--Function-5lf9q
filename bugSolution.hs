```haskell
import Data.List (sortWith)

main :: IO ()
main = do
  let nums = [1, 5, 2, 8, 3]
  let sortedNums = sort nums
  print sortedNums -- Output: [1,2,3,5,8]

  let words = ["banana", "apple", "orange"]
  let sortedWords = sort words
  print sortedWords -- Output: ["apple","banana","orange"]

  let tuples = [(1, "a"), (3, "c"), (2, "b")]
  let sortedTuples = sortWith ("(a, b)" -> compare (fst a) (fst b)) tuples --Custom comparison function for tuples
  print sortedTuples -- Output: [(1,"a"),(2,"b"),(3,"c")]

  let tuples2 = [(1, "c"),(3,"a"),(2,"b")]
  let sortedTuples2 = sortWith ("(a, b)" -> compare (snd a) (snd b)) tuples2 -- Custom comparison based on the second element
  print sortedTuples2 -- Output: [(3,"a"),(2,"b"),(1,"c")]
```