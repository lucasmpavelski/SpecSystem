class CreateRuleParts < ActiveRecord::Migration
  def self.up
    create_table :rule_parts do |t|
      t.references :fact
      t.references :hypothesis
      t.timestamps
    end
  end

  def self.down
    drop_table :rule_parts
  end
end
