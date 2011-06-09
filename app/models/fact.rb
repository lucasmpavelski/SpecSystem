class Fact < ActiveRecord::Base
  attr_accessible :description, :questions, :questions_attributes

  has_many :questions, :dependent => :destroy
  has_many :aproved_facts, :dependent => :destroy
  has_many :rejected_facts, :dependent => :destroy
  has_many :guesses, :dependent => :destroy

  accepts_nested_attributes_for :questions, :allow_destroy => true
end
