class AddTokenToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :device_id, :text
    add_column :usuarios, :type_device, :string
  end
end
