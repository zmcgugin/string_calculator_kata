defmodule StringCalculatorKataTest do
  use ExUnit.Case

  test "when given a empty string, zero is returned" do
    assert StringCalculatorKata.calculate("") == 0
  end

  test "when given a string of 1, 1 should be returned" do
    assert StringCalculatorKata.calculate("1") == 1
  end

end
