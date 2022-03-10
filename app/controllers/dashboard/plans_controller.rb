class Dashboard::PlansController < Dashboard::AdminController
	before_action :find_plan, only: [:edit, :update, :destroy]

	def index
		@plans = Plan.all.page(params[:page]).per(10)
	end

	def show
	end

	def new
		@plan = Plan.new
	end

	def create
		@plan = Plan.new(plan_params)
		if @plan.save
			redirect_to dashboard_plans_path, notice: "성공적으로 플랜을 생성했습니다."
		else
			render :new, alert: "플랜을 생성하는 중 오류가 발생했습니다."
		end
	end

	def edit
	end

	def update
		if @plan.update(plan_params)
			redirect_to dashboard_plans_path, notice: "플랜을 업데이트했습니다."
		else
			render :edit, alert: "플랜 업데이트에 실패했습니다."
		end
	end

	def destroy
		@plan.destroy
		redirect_to dashboard_plans_path, notice: "성공적으로 플랜을 삭제했습니다."
	end

	private

	def plan_params
		params.require(:plan).permit(:plan_id, :type, :duration, :description, :goal, :start, :end, :safety, :participants)
	end

	def find_plan
		@plan = Plan.find(params[:id])
	end
end
