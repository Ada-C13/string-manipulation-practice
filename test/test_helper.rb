require 'minitest/autorun'
require 'minitest/reporters'
require "minitest/skip_dsl"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative "../lib/reverse_sentence"
require_relative "../lib/sort_by_length"
# require_relative "../lib/merge_sort"