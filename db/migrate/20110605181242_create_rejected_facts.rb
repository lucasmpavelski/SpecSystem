class CreateRejectedFacts < ActiveRecord::Migration
  def self.up
    create_table :rejected_facts do |t|
      t.references :guess
      t.references :fact

      t.timestamps
    end
  end

  def self.down
    drop_table :rejected_facts
  end
end
