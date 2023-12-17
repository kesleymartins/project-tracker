class Work < ApplicationRecord
  enum :status, { started: 0, finished: 1 }

  belongs_to :project

  scope :by_project, ->(project) { where(project:) }

  before_create :defaults

  def defaults
    self.begin = DateTime.now
    self.started = 0
  end
end
