class AddQuantityToOperatorsPoste < ActiveRecord::Migration[5.2]
  def change
    add_column :operators_postes, :quantity, :integer
  end
end
