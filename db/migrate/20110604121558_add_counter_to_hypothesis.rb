class AddCounterToHypothesis < ActiveRecord::Migration
  def self.up
    add_column :hypotheses, :counter, :integer, :default => 0
  end

  def self.down
    remove_column :hypotheses, :counter
  end
end
