require 'set'

class BlackBoardsController < ApplicationController
  def index
    # inicializar fatos testados
    # inicializer perguntas feitas
    # selecionar hipótese inicial
    # redirecionar para provador
    @guess = Guess.new
    @guess.hypothesis = Hypothesis.find(:all, :limit => 1, :order => "counter DESC").first
    @guess.fact = @guess.hypothesis.facts.first
    @question_number = 0
    @guess.save
  end

  def avaliate_answer
    @question_number = params[:question_number].to_i
    if (params[:answer] == 'y')
      fact_acception(@guess)
    elsif (params[:answer] == 'n')

    elsif (params[:answer] == '?')
      @question_number = @question_number + 1
      if (@question_number >= @guess.fact.questions.count)
        @question_number = 0
      end
    end
    # se a resposta é não, 
    #    escolha outra hipótese e redirecione para provador e limpe perguntas feitas
    # se a resposta é não sei, escolha outra pergunta e renderize a interface

  end

  def fact_acception
    @question_number = 0
    @guess = Guess.find(params[:guess_id])
    af = AprovedFact.new
    af.guess_id = @guess.id
    af.fact_id = @guess.fact.id
    af.save
    @guess.fact = nil
    for f in @guess.hypothesis.fact_ids
      if !@guess.aproved_facts_ids.include?(f)
        @guess.fact = Fact.find(f)
        @question_number = 0
        break
      end
    end
    if @guess.fact.nil?
      redirect_to success_path
      return
    end
    @guess.save
    render :index
  end

  def fact_rejection
    @question_number = 0
    @guess = Guess.find(params[:guess_id])
    rf = RejectedFact.new
    rf.guess_id = @guess.id
    rf.fact_id = @guess.fact.id
    rf.save
    rh = RejectedHypothesis.new
    rh.guess_id = @guess.id
    rh.hypothesis_id = @guess.hypothesis.id
    rh.save
    @guess.hypothesis = nil
    @guess.fact = nil
    for h in Hypothesis.all#select(:id).collect { |h| h.id }
      if !@guess.rejected_hypotheses_ids.include?(h.id)
        ok = true
        for f in h.facts_ids
          if @guess.rejected_facts_ids.include?(f)
            ok = false
            break
          end
          if ok
            for af in h.facts_ids
              if !@guess.aproved_facts_ids.include?(af)
                @guess.fact = Fact.find(af)
              end
            end
            @guess.hypothesis = h
            break;
          end
        end
      end
    end
    if @guess.hypothesis.nil?
      redirect_to fail_path
      return
    end 
    @guess.save
    render :index
  end

  def prover
    # verificar se o fato já foi provado
    #   se ja foi, verificar se todos foram, então redirecionar para conclusao
    #   senão seelcionar próximo fato
    # selecionar pergunta
    # rederizar interface
    # selecionar fato da hipótese
  end
end
