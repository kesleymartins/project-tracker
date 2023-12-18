class Work < ApplicationRecord
  enum :status, { started: 0, finished: 1 }

  belongs_to :project

  scope :by_project, ->(project) { where(project:) }

  before_create :defaults

  def defaults
    self.begin = DateTime.now
    self.status = Work.statuses[:started]
  end

  def finish!
    self.end = DateTime.now
    self.status = Work.statuses[:finished]
  end
end
