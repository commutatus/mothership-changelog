class PostRelease < ApplicationRecord
  belongs_to :post
  belongs_to :project_environment
end
