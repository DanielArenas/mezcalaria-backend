class PublicController < ApplicationController

	def index
		if usuario_actual
			redirect_to mezcales_path
		end
	end

end