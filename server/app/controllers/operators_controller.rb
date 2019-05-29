class OperatorsController < ApplicationController
  def index
    # sleep 1 # Simulate loading time
    @operators = Operator.all
  end

  def show
    @operator = Operator.find(params[:id])
    @postes = Poste.all
  end

  def add_poste
    @poste = Poste.find(params[:id])
    @operator = Operator.find(params[:id])
    @poste.quantity = 0
    @poste.quantity += 1
  end
end

