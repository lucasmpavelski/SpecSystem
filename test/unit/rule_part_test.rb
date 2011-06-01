require 'test_helper'

class RulePartTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert RulePart.new.valid?
  end
end
