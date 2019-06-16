class Project < ApplicationRecord
	scope :public, -> {where(is_public: true)}
end