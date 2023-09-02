class Work < ApplicationRecord
  belongs_to :project

  scope :by_project, ->(project) { where(project:) }
end
