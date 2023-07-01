class Project < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3 }

  has_many :works
end
