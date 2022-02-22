class ApplicationController < ActionController::Base
	
	private

	def authenticate_admin!
		unless current_user && current_user.admin?
			# TODO: show 404 page
			flash[:alert] = "권한이 없습니다."
			redirect_to root_path
		end
	end
end
