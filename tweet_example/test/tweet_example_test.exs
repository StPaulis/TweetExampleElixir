defmodule TweetExampleTest do
  use ExUnit.Case
  doctest TweetExample

  test "greets the world" do
    assert TweetExample.hello() == :world
  end
end
