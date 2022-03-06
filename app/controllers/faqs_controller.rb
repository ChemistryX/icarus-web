class FaqsController < ApplicationController
	def index
		@pinned_faqs = Faq.where(pinned: true)
		@categories = Faq::CATEGORY
		@faqs = Faq.all
		@orig_faqs = @faqs
		@faqs = @faqs.filter_by_category(params[:category]) if params[:category] && @categories.include?(params[:category].to_sym)
	end
end
