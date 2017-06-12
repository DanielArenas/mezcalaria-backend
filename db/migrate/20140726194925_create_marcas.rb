class CreateMarcas < ActiveRecord::Migration
  def change
    create_table :marcas do |t|
      t.string :nombre
      t.string :logotipo
      t.string :direccion
      t.string :correo

      t.timestamps
    end
  end
end
