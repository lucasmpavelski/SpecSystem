class RulePart < ActiveRecord::Base
  attr_accessible :fact_id, :hypothesis_id

  belongs_to :hypothesis
  belongs_to :fact
end
