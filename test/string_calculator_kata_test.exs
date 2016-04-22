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

  test "when given a input with any number of spaces they should be ignored" do
    assert StringCalculatorKata.calculate("4,1") == 5
    assert StringCalculatorKata.calculate("3 ,  2") == 5
  end

  test "when given a string of two numbers that are new line seperated " do
    assert StringCalculatorKata.calculate("4\n5") == 9
  end

  test "when given a string with negative numbers each negative should be logged in an exception message" do
    assert_raise RuntimeError, "Negative numbers are not alowed: -1 -5", fn ->
      StringCalculatorKata.calculate("-1, 4, -5")
    end
  end

end
