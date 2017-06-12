class CreateMagueyes < ActiveRecord::Migration
  def change
    create_table :magueyes do |t|
      t.string :title
      t.string :sub_title
      t.text :description
      t.string :image
      t.integer :language

      t.timestamps null: false
    end
  end
end
