require 'test_helper'

class FactTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Fact.new.valid?
  end
end
