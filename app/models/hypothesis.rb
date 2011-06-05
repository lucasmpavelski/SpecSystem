class Hypothesis < ActiveRecord::Base
  attr_accessible :description, :facts, :rule_parts, :rule_parts_attributes, :answers, :answers_attributes, :counter, :facts_ids

  has_many :facts, :through => :rule_parts

  has_many :rule_parts, :dependent => :destroy
  has_many :answers, :dependent => :destroy

  has_many :rejected_hypotheses, :dependent => :destroy

  accepts_nested_attributes_for :rule_parts, :allow_destroy => true
  accepts_nested_attributes_for :answers, :allow_destroy => true

  def counter_up
    self.counter = self.counter + 1
  end

  def counter_down
    self.counter = self.counter - 1
  end

  def counter_clear
    self.counter = 0
  end

  def facts_ids
    self.facts.collect { |a| a.id }
  end
end
