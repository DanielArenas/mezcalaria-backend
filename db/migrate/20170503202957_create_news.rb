class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :tittle
      t.text :description
      t.string :video

      t.timestamps null: false
    end
  end
end
