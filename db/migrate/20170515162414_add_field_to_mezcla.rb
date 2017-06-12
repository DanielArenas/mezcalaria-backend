class AddFieldToMezcla < ActiveRecord::Migration
  def change
  	add_column :mezcales, :history_mezcal, :text
  	add_column :mezcales, :agave_distillation, :boolean
  end
end
