class Job < ApplicationRecord
  belongs_to :company
  validates_presence_of :title
end
