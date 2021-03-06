defmodule TweetExample.Tweet do
    def send(str) do
        ExTwitter.configure(
            consumer_key: System.get_env("CONSUMER_KEY"),
            consumer_secret: System.get_env("CS"),
            access_token: System.get_env("ATLL"),
            access_token_secret: System.get_env("ATSLL")
          )
        ExTwitter.update(str)
    end

    def send_random(file) do
        TweetExample.FileReader.get_str_to_tweet(file)
        |> send
    end
end