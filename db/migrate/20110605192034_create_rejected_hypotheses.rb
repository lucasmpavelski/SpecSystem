class CreateRejectedHypotheses < ActiveRecord::Migration
  def self.up
    create_table :rejected_hypotheses do |t|
      t.references :guess
      t.references :hypothesis

      t.timestamps
    end
  end

  def self.down
    drop_table :rejected_hypotheses
  end
end
