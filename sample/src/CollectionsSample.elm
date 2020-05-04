module CollectionsSample exposing (..)


-- TUPLES (static)


-- RECORDS (static)


-- LISTS (static)
list = 
    1 :: [ 2 ] ++ [ 3 ]
    
transformList list2 =
    list2
        |> List.map (\a -> a+1)
        |> List.map String.fromInt
        -- |>List.map toString
        |> String.join ", "

-- SETS (static)
set =
    Set.fromList list

transformSet set2 =
    set2
        |> Set.map (\a -> a+1 )
        |> Set.map String.fromInt
        |> Set.toList 
        |> String.join ", "

-- ARRAYS (dynamic)
array = 
    Array.empty
        |> Array.push 1
        |> Array.push 2
        |> Array.push 3

transformArray array2 =
    array2
        |> Array.get 1
        |> String.fromInt
        --|> unwrap


-- DICTIONARIES (dynamic)
dict =
    Dict.fromList
        [ ("question"
            , "Why?"
            )
        , ("answer"
            , "Because"
            )
        ]
transformDict dict2 =
    --Dict.get "answer" dict2 -- call by key
    Dict.update 
      "answer" 
      (\a -> (Maybe.map String.toUpper) a)
      dict2


--define operator

(=>) =
  (,)

dict3 =
    Dict.fromList
        [ "question" => "Why?"
        , "answer" => "Because"
        ]



