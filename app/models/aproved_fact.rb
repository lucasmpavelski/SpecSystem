class AprovedFact < ActiveRecord::Base
  attr_accessible :guess, :fact
  belongs_to :guess
  belongs_to :fact
end
