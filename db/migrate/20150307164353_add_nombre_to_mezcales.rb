class AddNombreToMezcales < ActiveRecord::Migration
  def change
    add_column :mezcales, :nombre, :string
  end
end
