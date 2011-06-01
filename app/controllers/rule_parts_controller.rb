class RulePartsController < ApplicationController
  def index
    @rule_parts = RulePart.all
  end

  def show
    @rule_part = RulePart.find(params[:id])
  end

  def new
    @rule_part = RulePart.new
  end

  def create
    @rule_part = RulePart.new(params[:rule_part])
    if @rule_part.save
      redirect_to @rule_part, :notice => "Successfully created rule part."
    else
      render :action => 'new'
    end
  end

  def edit
    @rule_part = RulePart.find(params[:id])
  end

  def update
    @rule_part = RulePart.find(params[:id])
    if @rule_part.update_attributes(params[:rule_part])
      redirect_to @rule_part, :notice  => "Successfully updated rule part."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @rule_part = RulePart.find(params[:id])
    @rule_part.destroy
    redirect_to rule_parts_url, :notice => "Successfully destroyed rule part."
  end
end
