class UsersController < ApplicationController

	def index
		@users = Usuario.where(rol_id: 2)

		respond_to do |format|
			format.html
      format.csv do
        headers['Content-Disposition'] = "attachment; filename=\"usuarios-#{Date.today}.csv\""
        headers['Content-Type'] ||= 'text/csv'
      end
		end
	end

end