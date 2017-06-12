class CreateSponsores < ActiveRecord::Migration
  def change
    create_table :sponsores do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :web_page
      t.text :description
      t.string :logo
      t.boolean :outstanding

      t.timestamps null: false
    end
  end
end
