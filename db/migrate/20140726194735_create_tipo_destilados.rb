class CreateTipoDestilados < ActiveRecord::Migration
  def change
    create_table :tipo_destilados do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
