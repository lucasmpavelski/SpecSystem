class PopulateFacts < ActiveRecord::Migration
  def self.up
    Fact.create(:description => 'Principal queixa é falta de ar') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Principal queixa é opressão ou desconforto torácico') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Principal queixa é suor salgado') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Principal queixa é dispnéia') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Principal queixa é dor toraica') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Principal queixa é mialgia') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Pico de fluxo expiatório diminuido') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Padrão respiratório taquipneico') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Padrão respiratório dispneico') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Tipo de tórax restritivo') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Tipo de tórax hiperinsuflado') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Tipo de tórax barril') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Tipo de tórax restritivo') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Expansibilidade pulmonar diminuída') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Murmúrio vesicular ausente') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Murmúrio vesicular diminuído') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Ruídos adventícios sibilos expiratórios') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Ruídos adventícios presente') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Ruídos adventícios roncos') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Ruídos adventícios estertor creptante') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Percussão torácica hipersonoro') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Percussão torácica macicez') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Tosse presente') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Expectoração presente') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Expectoração abundante') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Tipo secreção amarela') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Tipo secreção esverdeada, hemoptise, muco viscoso') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Característica dispnéia em repouso') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Característica dispnéia aos esforços') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Sinal esforço respiratório presente') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Cirtometria diminuída') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Cirtometria aumentada') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Cirtometria normal') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Tipo corporal normal') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Tipo corporal magro a maioria das vezes') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Tipo corporal obeso') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Tipo corporal raquítico') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Tipo corporal com perda de peso') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Coloração rosado') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Coloração cianótico') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Tabagismo presente') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Início sintomas infância') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Início sintomas após 40 anos') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'História familiar presente com frequência') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'História familiar genético') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Febre ausente, presente em infecções 2as') do |f|
      f.questions.build(:description => '')
    end

    Fact.create(:description => 'Febre presente') do |f|
      f.questions.build(:description => '')
    end
  end

  def self.down
    Fact.delete_all
  end
end
