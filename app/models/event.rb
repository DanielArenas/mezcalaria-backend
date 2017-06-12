class Event < ActiveRecord::Base
	mount_uploader :baner, LogoUploader

	def get_language
		language == 1 ? "Español" : "English"
	end
end
