class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :place
      t.date :date_event
      t.string :baner
      t.boolean :is_free

      t.timestamps null: false
    end
  end
end
