class CreateRegiones < ActiveRecord::Migration
  def change
    create_table :regiones do |t|
      t.string :nombre
      t.references :estado, index: true

      t.timestamps
    end
  end
end
