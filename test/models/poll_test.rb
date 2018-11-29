require 'test_helper'

class PollTest < ActiveSupport::TestCase
  test "finding if any answers start with a given letter" do
    poll = polls(:favorite_system_programming_language)

    assert poll.has_answer_that_starts_with('R')
  end
end
