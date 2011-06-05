class Fact < ActiveRecord::Base
  attr_accessible :description, :questions, :questions_attributes

  has_many :questions, :dependent => :destroy
  has_many :aproved_facts
  has_many :rejected_facts

  accepts_nested_attributes_for :questions, :allow_destroy => true
end
