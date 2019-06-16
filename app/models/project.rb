class Project < ApplicationRecord
	scope :public_only, -> {where(is_public: true)}
end