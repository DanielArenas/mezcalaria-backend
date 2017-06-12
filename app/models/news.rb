class News < ActiveRecord::Base
	mount_uploader :video, VideoUploader
	mount_uploader :photo, LogoUploader

	def get_language
		language == 1 ? "Español" : "English"
	end
	
end
