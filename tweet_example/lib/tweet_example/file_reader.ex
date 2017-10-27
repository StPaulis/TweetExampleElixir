defmodule TweetExample.FileReader do
    def get_str_to_tweet(path) do
        File.read!(path) 
        |> String.split("\r\n")
        |> Enum.map(&String.trim/1)
        |> Enum.filter(fn str -> String.length(str) <= 140 end)
        |> Enum.random()
    end
end