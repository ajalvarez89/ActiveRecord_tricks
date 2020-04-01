class Status < ApplicationRecord
  has_many :users

  scope :active, -> { where(active: true) }
end
