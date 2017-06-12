class AddLanguageToObjects < ActiveRecord::Migration
  def change
  	add_column :events, :language, :integer, default: 1
  	add_column :mezcales, :language, :integer, default: 1
  	add_column :news, :language, :integer, default: 1
  	add_column :sponsores, :language, :integer, default: 1
  end
end
