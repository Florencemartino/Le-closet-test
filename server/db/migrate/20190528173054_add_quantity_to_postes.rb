class AddQuantityToPostes < ActiveRecord::Migration[5.2]
  def change
    add_column :postes, :quantity, :integer
  end
end
