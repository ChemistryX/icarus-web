class Dashboard::ProfileController < Devise::RegistrationsController
	layout 'dashboard', only: [:edit, :update]

	def edit
	end
end
