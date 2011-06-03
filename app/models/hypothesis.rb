class Hypothesis < ActiveRecord::Base
  attr_accessible :description, :facts, :rule_parts, :rule_parts_attributes, :answers, :answers_attributes

  has_many :facts, :through => :rule_parts

  has_many :rule_parts, :dependent => :destroy
  has_many :answers, :dependent => :destroy

  accepts_nested_attributes_for :rule_parts, :allow_destroy => true
  accepts_nested_attributes_for :answers, :allow_destroy => true
end
