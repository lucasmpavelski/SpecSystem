class HypothesesController < ApplicationController
  def index
    @hypotheses = Hypothesis.all
  end

  def show
    @hypothesis = Hypothesis.find(params[:id])
  end

  def new
    @hypothesis = Hypothesis.new
    2.times { @hypothesis.rule_parts.build }
  end

  def create
    @hypothesis = Hypothesis.new(params[:hypothesis])
    if @hypothesis.save
      redirect_to @hypothesis, :notice => "Successfully created hypothesis."
    else
      render :action => 'new'
    end
  end

  def edit
    @hypothesis = Hypothesis.find(params[:id])
  end

  def update
    @hypothesis = Hypothesis.find(params[:id])
    if @hypothesis.update_attributes(params[:hypothesis])
      redirect_to @hypothesis, :notice  => "Successfully updated hypothesis."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @hypothesis = Hypothesis.find(params[:id])
    @hypothesis.destroy
    redirect_to hypotheses_url, :notice => "Successfully destroyed hypothesis."
  end
end
