class PopulateHypothesis < ActiveRecord::Migration
  def self.up
    Hypothesis.create(:description => 'Atelectasia') do |h|
      h.answers.build(:description => '')
    end

    Hypothesis.create(:description => 'Asma') do |h|
      h.answers.build(:description => '')
    end

    Hypothesis.create(:description => 'Bronquite') do |h|
      h.answers.build(:description => '')
    end

    Hypothesis.create(:description => 'Enfisema') do |h|
      h.answers.build(:description => '')
    end
  
    Hypothesis.create(:description => 'Fibrose Cística') do |h|
      h.answers.build(:description => '')
    end

    Hypothesis.create(:description => 'Derrame pelural') do |h|
      h.answers.build(:description => '')
    end

    Hypothesis.create(:description => 'Pneumonia') do |h|
      h.answers.build(:description => '')
    end
  end

  def self.down
    Hypothesis.delete_all
  end
end
