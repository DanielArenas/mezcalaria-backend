class CreateZonaProducciones < ActiveRecord::Migration
  def change
    create_table :zona_producciones do |t|
      t.string :localidad
      t.references :municipio, index: true

      t.timestamps
    end
  end
end
