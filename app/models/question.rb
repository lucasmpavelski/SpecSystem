class Question < ActiveRecord::Base
  attr_accessible :facts, :description

  belongs_to :fact
end
