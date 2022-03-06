class Faq
  include Mongoid::Document
  include Mongoid::Enum
  include Mongoid::Timestamps

  scope :filter_by_category, -> (category) { where _category: category }

  field :question, type: String
  field :answer, type: String
  enum :category, [:plan, :account, :payment, :others]
  field :pinned, type: Boolean, default: false
end
