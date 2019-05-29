class OperatorsPosteController < ApplicationController
  def index
    @operators_poste = OperatorsPoste.all
  end
end
