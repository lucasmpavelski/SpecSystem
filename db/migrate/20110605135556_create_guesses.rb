class CreateGuesses < ActiveRecord::Migration
  def self.up
    create_table :guesses do |t|
      t.references :hypothesis
      t.references :fact

      t.timestamps
    end
  end

  def self.down
    drop_table :guesses
  end
end
