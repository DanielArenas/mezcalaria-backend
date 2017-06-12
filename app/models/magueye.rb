class Magueye < ActiveRecord::Base
	mount_uploader :image, LogoUploader

	def get_language
		language == 1 ? "Español" : "English"
	end
end
