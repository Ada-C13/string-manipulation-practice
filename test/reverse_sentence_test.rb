require_relative "test_helper"

# note: adjusted the tests to use the returned value
describe "reverse sentence" do
  describe "basic tests" do
    it "reverse a sentence with two words" do
      test_string = "hello, world"

      test_value = reverse_sentence(test_string)

      test_value.must_equal "world hello,"
    end

    it "reverse a sentence with three words" do
      test_string = "Yoda is awesome!"

      test_value = reverse_sentence(test_string)

      test_value.must_equal "awesome! is Yoda"
    end
  end

  # check for edge cases
  describe "edge cases" do
    # if it's a string parameter, check for empty
    it "reverse an empty sentence" do
      test_string = ""

      test_value = reverse_sentence(test_string)

      test_value.must_be_empty
    end

    # if the parameter is an object, check for nil
    it "nil object passed to sentence reverse" do
      test_string = nil

      test_value = reverse_sentence(test_string)

      test_value.must_be_nil
    end

    it "reverse a sentence with one word" do
      test_string = "world"

      test_value = reverse_sentence(test_string)

      test_value.must_equal "world"
    end

    it "reverse a sentence with multiple words" do
      test_string = "I'm a better engineer today than I was yesterday."

      test_value = reverse_sentence(test_string)

      test_value.must_equal "yesterday. was I than today engineer better a I'm"
    end

    it "reverse a sentence with multiple spaces between words" do
      test_string = "How  do  you   like     them      apples?"

      test_value = reverse_sentence(test_string)

      test_value.must_equal "apples?      them     like   you  do  How"
    end

    it "reverse a sentence with preceeding and trailing white spaces" do
      test_string = "  I can do this!     "

        test_value = reverse_sentence(test_string)

        test_value.must_equal "     this! do can I  "
    end
  end
end
