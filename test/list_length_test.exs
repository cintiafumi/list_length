defmodule ListLengthTest do
  use ExUnit.Case

  describe "list_length/1" do
    test "returns the length of a list" do
      list = [1, 2, 3]

      response = ListLength.call(list)

      expected_response = 3

      assert response == expected_response
    end
  end
end
