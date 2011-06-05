class Guess < ActiveRecord::Base
  #attr_accessible :id, :hypothesis, :fact, :ok_facts#, :ok_facts_attributes

  belongs_to :hypothesis
  belongs_to :fact

  has_many :aproved_facts, :dependent => :destroy
  has_many :rejected_facts, :dependent => :destroy
  has_many :rejected_hypotheses, :dependent => :destroy

  def aproved_facts_ids
    self.aproved_facts.collect { |a| a.fact_id }
  end

  def rejected_facts_ids
    self.rejected_facts.collect { |a| a.fact_id }
  end

  def rejected_hypotheses_ids
    self.rejected_hypotheses.collect { |a| a.hypothesis_id }
  end
end
