defmodule StringCalculatorKataTest do
  use ExUnit.Case

  test "when given a empty string, zero is returned" do
    assert StringCalculatorKata.calculate("") == 0
  end

  test "when given a string of 1, 1 should be returned" do
    assert StringCalculatorKata.calculate("1") == 1
  end

  test "when given a string of 2, 2 should be returned" do
    assert StringCalculatorKata.calculate("2") == 2
  end

  test "when given a string of two comma seperated numbers they should be summed together" do
    assert StringCalculatorKata.calculate("2, 4") == 6
  end

end
