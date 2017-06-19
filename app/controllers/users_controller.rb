class UsersController < ApplicationController

	def index
		@users = Usuario.where(rol_id: 2)
	end
end