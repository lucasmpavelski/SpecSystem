require 'test_helper'

class HypothesisTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Hypothesis.new.valid?
  end
end
