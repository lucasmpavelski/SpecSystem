class CreateAprovedFacts < ActiveRecord::Migration
  def self.up
    create_table :aproved_facts do |t|
      t.references :guess
      t.references :fact

      t.timestamps
    end
  end

  def self.down
    drop_table :aproved_facts
  end
end
