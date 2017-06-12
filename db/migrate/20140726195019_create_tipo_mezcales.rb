class CreateTipoMezcales < ActiveRecord::Migration
  def change
    create_table :tipo_mezcales do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
