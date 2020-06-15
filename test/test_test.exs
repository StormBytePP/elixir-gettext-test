defmodule TestTest do
  use ExUnit.Case

  test "test translate string inside priv" do
    Gettext.put_locale("es")
    Gettext.gettext(Test.GettextInside, "Inside text")
    |> Kernel.==("Texto interior")
    |> assert()
  end

  test "test translate string outside priv" do
    Gettext.put_locale("es")
    Gettext.gettext(Test.GettextOutside, "Outside text")
    |> Kernel.==("Texto exterior")
    |> assert()
  end
end

