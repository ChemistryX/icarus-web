class Dashboard::UsersController < Dashboard::AdminController
	before_action :find_user, only: [:edit, :update]

	def index
		@users = User.order_by(created_at: :asc)
	end

	def edit
	end

	def update
		if @user.update(user_params)
			redirect_to dashboard_users_path
			flash[:notice] = "계정 정보를 업데이트했습니다."
		else
			render :edit
		end
	end

	private

	def user_params
		# email as a fallback param
		params.require(:user).permit(:email, :admin, :suspended)
	end

	def find_user
		@user = User.find(params[:id])
	end
end
