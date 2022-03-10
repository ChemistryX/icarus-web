class Plan
	include Mongoid::Document
	include Mongoid::Enum
	include Mongoid::Timestamps
    
	# 모금액 다모이면 모집 중지, 봇은 모집 마감 이후 n일 후부터 작동
	# 만약 모금액 못채우더라도 모집 기간 종료되면 기존 설정된 n일 후부터 봇 작동
	field :plan_id, type: String
	enum :kind, [:short, :long]
	field :duration, type: Integer
	field :description, type: String
	field :goal, type: Integer
	field :current_budget, type: Integer, default: 0
	field :start, type: Time
	field :end, type: Time
	field :revenue, type: Integer, default: 0 # 각 종류별 마지막으로 끝난 플랜의 수익
	field :safety, type: Float
	field :participants, type: Array, default: [] # stores individual user's id
	enum :status, [:waiting, :recruiting, :running, :finished]
end
  