class Faq
  include Mongoid::Document
  include Mongoid::Enum
  include Mongoid::Timestamps

  field :question, type: String
  field :answer, type: String
  enum :category, [:plan, :account, :payment, :others]
  field :pinned, type: Boolean, default: false
end
