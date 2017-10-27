defmodule TweetExample.Scheduler do
    def schedule_file(scedule,file) do
        Quantum.add_job(scedule, fn -> IO.puts TweetExample.FileReader.get_str_to_tweet(file) end)
       #Quantum.add_job(scedule, fn -> IO.puts TweetExample.FileReader.get_str_to_tweet(file) end)
    end
end    