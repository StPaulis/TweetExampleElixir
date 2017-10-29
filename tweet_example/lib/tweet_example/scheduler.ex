defmodule TweetExample.Scheduler do
    def schedule_file(scedule,file) do
        Quantum.add_job(scedule, fn -> TweetExample.FileReader.get_str_to_tweet(file) |> TweetExample.TweetServer.tweet end)
    end
end    