defmodule Anchor.PagesTest do
  use ExUnit.Case
  doctest Anchor.Pages

  test "greets the world" do
    assert Anchor.Pages.hello() == :world
  end
end
