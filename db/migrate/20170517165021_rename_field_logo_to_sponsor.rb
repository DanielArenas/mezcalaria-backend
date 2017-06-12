class RenameFieldLogoToSponsor < ActiveRecord::Migration
  def change
  	rename_column :sponsores, :logo, :logo_sponsor
  end
end
