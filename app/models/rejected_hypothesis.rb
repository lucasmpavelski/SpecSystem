class RejectedHypothesis < ActiveRecord::Base
  attr_accessible :guess, :hypothesis
  belongs_to :guess
  belongs_to :hypothesis
end
