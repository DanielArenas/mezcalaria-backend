class Sponsor < ActiveRecord::Base
	mount_uploader :logo_sponsor, LogoUploader

	def get_language
		language == 1 ? "Español" : "English"
	end

end
