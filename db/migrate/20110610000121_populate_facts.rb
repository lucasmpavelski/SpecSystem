class PopulateFacts < ActiveRecord::Migration
  def self.up
    Fact.create(:description => 'Principal queixa é falta de ar') do |f|
      f.questions.build(:description => 'A falta de ar lhe incomoda muito?')
      f.questions.build(:description => 'A falta de ar é o principal problema?')
    end

    Fact.create(:description => 'Principal queixa é opressão ou desconforto torácico') do |f|
      f.questions.build(:description => 'Sente opressão no tórax?')
      f.questions.build(:description => 'Sente desconforto no tórax?')
    end

    Fact.create(:description => 'Principal queixa é suor salgado') do |f|
      f.questions.build(:description => 'Você tem o suor salgado?')
    end

    Fact.create(:description => 'Principal queixa é dor toraica') do |f|
      f.questions.build(:description => 'Sente muita dor no tórax?')
    end

    Fact.create(:description => 'Principal queixa é mialgia') do |f|
      f.questions.build(:description => 'Sente dor nos músculos?')
      f.questions.build(:description => 'Sente dor muscular?')
    end

    Fact.create(:description => 'Pico de fluxo expiatório diminuido') do |f|
      f.questions.build(:description => 'Você respira muito pouco ar?')
      f.questions.build(:description => 'Possui pico de fluxo expiatório diminuido?')
    end

    Fact.create(:description => 'Padrão respiratório taquipneico') do |f|
      f.questions.build(:description => 'Possui a respiração curta?')
    end

    Fact.create(:description => 'Padrão respiratório dispneico') do |f|
      f.questions.build(:description => 'Possui dificuldade em respirar o suficiente?')
      f.questions.build(:description => 'Possui respiração completa?')
    end

    Fact.create(:description => 'Tipo de tórax restritivo') do |f|
      f.questions.build(:description => 'Possui o tórax restritivo?')
      f.questions.build(:description => 'Possui pequeno volume de pulmão?')
    end

    Fact.create(:description => 'Tipo de tórax hiperinsuflado') do |f|
      f.questions.build(:description => 'Possui o tórax hiperinsuflado?')
      f.questions.build(:description => 'Possui grande volume de pulmão?')
    end

    Fact.create(:description => 'Tipo de tórax barril') do |f|
      f.questions.build(:description => 'Possui um diâmetro frontal aumentado?')
    end

    Fact.create(:description => 'Expansibilidade pulmonar diminuída') do |f|
      f.questions.build(:description => 'Seu pulmão consegue expandir o suficiente?')
    end

    Fact.create(:description => 'Murmúrio vesicular diminuído') do |f|
      f.questions.build(:description => 'Você emite algum som ao respirar?')
    end

    Fact.create(:description => 'Ruídos adventícios sibilos expiratórios') do |f|
      f.questions.build(:description => 'Sente seu pulmão chiar quando respira?')
      f.questions.build(:description => 'Emite sons mais agudos quando respira?')
    end

    Fact.create(:description => 'Ruídos adventícios presente') do |f|
      f.questions.build(:description => 'Você emite algum som ao respirar?')
    end

    Fact.create(:description => 'Ruídos adventícios roncos') do |f|
      f.questions.build(:description => 'Você ronca?')
      f.questions.build(:description => 'Emite sons mais graves quando respira?')
    end

    Fact.create(:description => 'Ruídos adventícios estertor creptante') do |f|
      f.questions.build(:description => 'Emite sons creptantes quando respira?')
      f.questions.build(:description => 'Emite sons não uniformes e de curta duração quando respira?')
    end

    Fact.create(:description => 'Percussão torácica hipersonoro') do |f|
      f.questions.build(:description => 'Percebe batidas no pulmão quando respira?')
    end

    Fact.create(:description => 'Percussão torácica macicez') do |f|
      f.questions.build(:description => 'Percebe batidas macias no pulmão quando respira?')
    end

    Fact.create(:description => 'Tosse presente') do |f|
      f.questions.build(:description => 'Você sente tosse?')
    end

    Fact.create(:description => 'Expectoração presente') do |f|
      f.questions.build(:description => 'Você possui tosse com catarro?')
    end

    Fact.create(:description => 'Expectoração abundante') do |f|
      f.questions.build(:description => 'Você possui tosse com  muito catarro?')
    end

    Fact.create(:description => 'Tipo secreção amarela') do |f|
      f.questions.build(:description => 'A cor do catarro é amarela?')
    end

    Fact.create(:description => 'Tipo secreção esverdeada, hemoptise, muco viscoso') do |f|
      f.questions.build(:description => 'O catarro é esverdeado e viscoso?')
    end

    Fact.create(:description => 'Característica dispnéia em repouso') do |f|
      f.questions.build(:description => 'Sente dificuldade de respirar em repouso?')
    end

    Fact.create(:description => 'Característica dispnéia aos esforços') do |f|
      f.questions.build(:description => 'Sente dificuldade de respirar em esforços físicos?')
    end

    Fact.create(:description => 'Sinal esforço respiratório presente') do |f|
      f.questions.build(:description => 'Sente dificuldade em respirar normalmente?')
    end

    Fact.create(:description => 'Cirtometria diminuída') do |f|
      f.questions.build(:description => 'O tamanho do seu tórax é abaixo do normal?')
    end

    Fact.create(:description => 'Cirtometria aumentada') do |f|
      f.questions.build(:description => 'O tamanho do seu tórax é acima do normal?')
    end

    Fact.create(:description => 'Tipo corporal magro a maioria das vezes') do |f|
      f.questions.build(:description => 'Você se considera magro ou com peso normal?')
    end

    Fact.create(:description => 'Tipo corporal obeso') do |f|
      f.questions.build(:description => 'Considera-se uma pessoa obesa?')
      f.questions.build(:description => 'Está acima do peso?')
    end

    Fact.create(:description => 'Tipo corporal raquítico') do |f|
      f.questions.build(:description => 'Está abaixo do peso?')
    end

    Fact.create(:description => 'Tipo corporal com perda de peso') do |f|
      f.questions.build(:description => 'Anda perdendo peso?')
    end

    Fact.create(:description => 'Coloração rosado') do |f|
      f.questions.build(:description => 'Você é rosado?')
    end

    Fact.create(:description => 'Coloração cianótico') do |f|
      f.questions.build(:description => 'Você é pálido?')
    end

    Fact.create(:description => 'Tabagismo presente') do |f|
      f.questions.build(:description => 'Você fuma ou já fumou bastante?')
    end

    Fact.create(:description => 'Início sintomas infância') do |f|
      f.questions.build(:description => 'Os sintomas começaram na infância?')
      f.questions.build(:description => 'Os sintomas existem desde criança?')
    end

    Fact.create(:description => 'Início sintomas após 40 anos') do |f|
      f.questions.build(:description => 'Os sintomas começaram após os 40 anos?')
    end

    Fact.create(:description => 'História familiar presente com frequência') do |f|
      f.questions.build(:description => 'Possui cassos parecidos na família?')
    end

    Fact.create(:description => 'História familiar genético') do |f|
      f.questions.build(:description => 'Possui cassos parecidos na família?')
    end

    Fact.create(:description => 'Febre presente') do |f|
      f.questions.build(:description => 'Você sente febre?')
      f.questions.build(:description => 'Você está febril?')
      f.questions.build(:description => 'Sua temperatura está alta?')
    end
  end

  def self.down
    Fact.delete_all
  end
end
