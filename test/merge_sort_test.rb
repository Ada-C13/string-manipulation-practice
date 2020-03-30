# require_relative "test_helper"

# describe "merge_sort tests" do
#   describe "split_into_halves" do
#     it "splits even arrays into two equal halves" do
#       test = ["one", "two", "three", "four"]
#       left = ["one", "two"]
#       right = ["three", "four"]
#       expect(split_into_halves(test)).must_equal [left, right]
#     end

#     it "splits odd arrays into two equal halves" do
#       test = ["one", "two", "three", "four", "five"]
#       left = ["one", "two", "three"]
#       right = ["four", "five"]
#       expect(split_into_halves(test)).must_equal [left, right]
#     end

#     it "returns left filled and empty right if array has one item" do
#       test = ["one"]
#       left = ["one"]
#       right = []
#       expect(split_into_halves(test)).must_equal [left, right]
#     end

#     it "returns empty arrays for both left and right if input array is empty" do
#       test = []
#       left = []
#       right = []
#       expect(split_into_halves(test)).must_equal [left, right]
#     end
#   end

#   describe "merge_sorted_halves" do
#     it "two empty arrays" do
#       left = []
#       right = []

#       expect(merge_sorted_halves(left, right)).must_equal []
#     end

#     it "one empty" do
#       left = []
#       right = ["one", "two", "three"]

#       expect(merge_sorted_halves(left, right)).must_equal right
#     end

#     it "both arrays are the same" do
#       left = ["a", "to", "cat"]
#       right = ["a", "to", "cat"]

#       expect(merge_sorted_halves(left, right)).must_equal ["a", "a", "to", "to", "cat", "cat"]
#     end

#     it "handles different arrays properly" do
#       left = ["a", "to"]
#       right = ["a", "to", "cat"]

#       expect(merge_sorted_halves(left, right)).must_equal ["a", "a", "to", "to", "cat"]
#     end

#     it "handles interleaved arrays properly" do
#       left = ["a", "dog", "haste"]
#       right = ["to", "flat", "haggle"]

#       expect(merge_sorted_halves(left, right)).must_equal ["a", "to", "dog", "flat", "haste", "haggle"]
#     end

#     it "handles interleaved arrays properly regardless of left/ right" do
#       right = ["a", "dog", "haste"]
#       left = ["to", "flat", "haggle"]

#       expect(merge_sorted_halves(left, right)).must_equal ["a", "to", "dog", "flat", "haste", "haggle"]
#     end
#   end
# end