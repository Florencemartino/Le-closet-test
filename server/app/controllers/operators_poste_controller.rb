class OperatorsPosteController < ApplicationController
  def index
    @operators_poste = OperatorsPoste.all
  end

  def add_poste
    @operator = Operator.find(params[:operator_id])
    raise
    @poste = Poste.find(params[:poste_id])
    @operator_poste = OperatorsPoste.where(poste_id: @poste.id, operator: @operator.id)
    @operator_poste.quantity = 0
    @operator_poste.quantity += 1
    # if @operator_poste.save
    #   respond_to do |format|
    #     format.html { redirect_to event_whishlists_path(@event) }
    #     format.js
    #   end
    # end
  end

  def added_poste
    @poste = Poste.find(params[:id])
    @operator = Operator.find(params[:id])
    @operator_poste = OperatorsPoste.where(poste_id: @poste.id, operator: @operator.id)
    @operator_poste.update(operator_poste_params)
    @operator_poste.save
    redirect_to operator_path(@operator)
  end
end
