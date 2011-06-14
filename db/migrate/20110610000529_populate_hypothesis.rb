class PopulateHypothesis < ActiveRecord::Migration
  def self.up
    Hypothesis.create(:description => 'Atelectasia') do |h|
      h.answers.build(:description => 'Procure um médico')
      h.answers.build(:description => 'Tome os remédios receitados regularmente')
      h.rule_parts.build(:fact_id => Fact.where(:description => "Principal queixa é falta de ar")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Padrão respiratório taquipneico")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Tipo de tórax restritivo")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Expansibilidade pulmonar diminuída")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Característica dispnéia em repouso")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Sinal esforço respiratório presente")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Cirtometria diminuída")[0].id)
    end

    Hypothesis.create(:description => 'Asma') do |h|
      h.answers.build(:description => 'Procure um médico')
      h.answers.build(:description => 'Tome os remédios receitados regularmente')
      h.rule_parts.build(:fact_id => Fact.where(:description => "Principal queixa é opressão ou desconforto torácico")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Pico de fluxo expiatório diminuido")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Padrão respiratório taquipneico")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Tipo de tórax hiperinsuflado")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Expansibilidade pulmonar diminuída")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Murmúrio vesicular diminuído")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Ruídos adventícios sibilos expiratórios")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Percussão torácica hipersonoro")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Tosse presente")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Expectoração presente")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Tipo secreção amarela")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Característica dispnéia aos esforços")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Sinal esforço respiratório presente")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Cirtometria aumentada")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Tipo corporal magro a maioria das vezes")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Início sintomas infância")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "História familiar presente com frequência")[0].id)
    end

    Hypothesis.create(:description => 'Bronquite') do |h|
      h.answers.build(:description => 'Procure um médico')
      h.answers.build(:description => 'Tome os remédios receitados regularmente')
      h.rule_parts.build(:fact_id => Fact.where(:description => "Principal queixa é falta de ar")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Pico de fluxo expiatório diminuido")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Padrão respiratório dispneico")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Tipo de tórax hiperinsuflado")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Tipo de tórax barril")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Ruídos adventícios presente")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Tosse presente")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Expectoração abundante")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Tipo secreção amarela")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Característica dispnéia aos esforços")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Sinal esforço respiratório presente")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Cirtometria aumentada")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Tipo corporal obeso")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Coloração rosado")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Tabagismo presente")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Início sintomas após 40 anos")[0].id)
    end

    Hypothesis.create(:description => 'Enfisema') do |h|
      h.answers.build(:description => 'Procure um médico')
      h.answers.build(:description => 'Tome os remédios receitados regularmente')
      h.rule_parts.build(:fact_id => Fact.where(:description => "Principal queixa é falta de ar")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Pico de fluxo expiatório diminuido")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Padrão respiratório dispneico")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Tipo de tórax hiperinsuflado")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Tipo de tórax barril")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Ruídos adventícios presente")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Percussão torácica hipersonoro")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Tosse presente")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Característica dispnéia em repouso")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Sinal esforço respiratório presente")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Cirtometria aumentada")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Tipo corporal raquítico")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Coloração cianótico")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Tabagismo presente")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Início sintomas após 40 anos")[0].id)
    end
  
    Hypothesis.create(:description => 'Fibrose Cística') do |h|
      h.answers.build(:description => 'Procure um médico')
      h.answers.build(:description => 'Tome os remédios receitados regularmente')
      h.rule_parts.build(:fact_id => Fact.where(:description => "Principal queixa é suor salgado")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Principal queixa é falta de ar")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Padrão respiratório dispneico")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Tipo de tórax restritivo")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Expansibilidade pulmonar diminuída")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Murmúrio vesicular diminuído")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Ruídos adventícios sibilos expiratórios")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Ruídos adventícios roncos")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Expectoração abundante")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Tosse presente")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Sinal esforço respiratório presente")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Cirtometria diminuída")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Tipo corporal com perda de peso")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Febre presente")[0].id)
    end

    Hypothesis.create(:description => 'Derrame pelural') do |h|
      h.answers.build(:description => 'Procure um médico')
      h.answers.build(:description => 'Tome os remédios receitados regularmente')
      h.rule_parts.build(:fact_id => Fact.where(:description => "Principal queixa é falta de ar")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Principal queixa é dor toraica")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Padrão respiratório dispneico")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Tipo de tórax restritivo")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Expansibilidade pulmonar diminuída")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Murmúrio vesicular diminuído")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Ruídos adventícios estertor creptante")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Percussão torácica macicez")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Tosse presente")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Característica dispnéia em repouso")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Sinal esforço respiratório presente")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Cirtometria diminuída")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Febre presente")[0].id)
    end

    Hypothesis.create(:description => 'Pneumonia') do |h|
      h.answers.build(:description => 'Procure um médico')
      h.answers.build(:description => 'Tome os remédios receitados regularmente')
      h.rule_parts.build(:fact_id => Fact.where(:description => "Principal queixa é falta de ar")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Principal queixa é mialgia")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Padrão respiratório dispneico")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Expansibilidade pulmonar diminuída")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Murmúrio vesicular diminuído")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Ruídos adventícios presente")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Percussão torácica macicez")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Tosse presente")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Expectoração presente")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Tipo secreção amarela")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Característica dispnéia em repouso")[0].id)
      h.rule_parts.build(:fact_id => Fact.where(:description => "Febre presente")[0].id)
    end
  end

  def self.down
    RulePart.delete_all
    Hypothesis.delete_all
    Guess.delete_all
  end
end
