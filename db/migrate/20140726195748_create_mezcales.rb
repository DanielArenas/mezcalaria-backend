class CreateMezcales < ActiveRecord::Migration
  def change
    create_table :mezcales do |t|
      t.references :tipo_mezcal, index: true
      t.references :tipo_maguey, index: true
      t.references :tipo_destilado, index: true
      t.references :marca, index: true
      t.decimal :precio_promedio
      t.references :zona_produccion, index: true
      t.string :maestro_mezcalero
      t.boolean :certificado
      t.text :lugares_venta
      t.text :comentario_maestro
      t.string :fotografia

      t.timestamps
    end
  end
end
