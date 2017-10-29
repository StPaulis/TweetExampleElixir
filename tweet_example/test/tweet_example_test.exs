defmodule TweetExampleTest do
  use ExUnit.Case
  doctest TweetExample

  test "greets the world" do
    assert TweetExample.hello() == :world
  end

  @tag watching: true
  test "sdasdfs" do
    assert 2 + 2 == 4
  end
end
