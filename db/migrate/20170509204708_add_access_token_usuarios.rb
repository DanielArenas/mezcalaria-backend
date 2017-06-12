class AddAccessTokenUsuarios < ActiveRecord::Migration
  def change
  	add_column :usuarios, :idiom, :string
  end
end
