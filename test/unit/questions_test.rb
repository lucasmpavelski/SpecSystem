require 'test_helper'

class QuestionsTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Questions.new.valid?
  end
end
