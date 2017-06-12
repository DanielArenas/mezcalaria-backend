class CreateTipoMagueyes < ActiveRecord::Migration
  def change
    create_table :tipo_magueyes do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
