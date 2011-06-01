class Hypothesis < ActiveRecord::Base
  attr_accessible :description, :facts, :rule_parts, :rule_parts_attributes

  has_many :rule_parts, :dependent => :destroy
  has_many :facts, :through => :rule_parts

  accepts_nested_attributes_for :rule_parts, 
    :allow_destroy => true
end
