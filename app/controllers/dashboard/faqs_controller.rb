class Dashboard::FaqsController < Dashboard::AdminController
	before_action :find_faq, only: [:edit, :update, :destroy]

	def index
		@faqs = Faq.all
	end

	def show
	end

	def new
		@faq = Faq.new
	end

	def create
		@faq = Faq.new(faq_params)
		if @faq.save
			redirect_to dashboard_faqs_path, notice: "성공적으로 FAQ를 생성했습니다."
		else
			render :new, alert: "FAQ를 생성하는 중 오류가 발생했습니다."
		end
	end

	def edit
	end

	def update
		if @faq.update(faq_params)
			redirect_to dashboard_faqs_path, notice: "FAQ를 업데이트했습니다."
		else
			render :edit, alert: "FAQ 업데이트에 실패했습니다."
		end
	end

	def destroy
		@faq.destroy
		redirect_to dashboard_faqs_path, notice: "성공적으로 FAQ를 삭제했습니다."
	end

	private

	def faq_params
		params.require(:faq).permit(:question, :answer, :category, :pinned)
	end

	def find_faq
		@faq = Faq.find(params[:id])
	end
end
