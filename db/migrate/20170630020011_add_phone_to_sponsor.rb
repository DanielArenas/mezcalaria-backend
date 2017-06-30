class AddPhoneToSponsor < ActiveRecord::Migration
  def change
    add_column :sponsores, :phone, :string
  end
end
