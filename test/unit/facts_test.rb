require 'test_helper'

class FactsTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Facts.new.valid?
  end
end
