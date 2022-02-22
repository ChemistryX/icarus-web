class Dashboard::AdminController < Dashboard::BaseController
	before_action :authenticate_admin!
end
