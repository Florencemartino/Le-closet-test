class OperatorsController < ApplicationController
  def index
    # sleep 1 # Simulate loading time
    @operators = Operator.all
  end

  def show
    @operator = Operator.find(params[:id])
    @postes = Poste.all
  end


end

