class AddLanguageToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :language, :integer, default: 1
  end
end
