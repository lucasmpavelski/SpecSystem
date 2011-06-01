class FactsController < ApplicationController
  def index
    @facts = Fact.all
  end

  def show
    @fact = Fact.find(params[:id])
  end

  def new
    @fact = Fact.new
  end

  def create
    @fact = Fact.new(params[:fact])
    if @fact.save
      redirect_to @fact, :notice => "Successfully created fact."
    else
      render :action => 'new'
    end
  end

  def edit
    @fact = Fact.find(params[:id])
  end

  def update
    @fact = Fact.find(params[:id])
    if @fact.update_attributes(params[:fact])
      redirect_to @fact, :notice  => "Successfully updated fact."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @fact = Fact.find(params[:id])
    @fact.destroy
    redirect_to facts_url, :notice => "Successfully destroyed fact."
  end
end
