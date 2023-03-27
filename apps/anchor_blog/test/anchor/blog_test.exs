defmodule Anchor.BlogTest do
  use ExUnit.Case
  doctest Anchor.Blog

  test "greets the world" do
    assert Anchor.Blog.hello() == :world
  end
end
