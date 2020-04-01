class User < ApplicationRecord
  belongs_to :status
  has_many :messages, dependent: :destroy

  scope :active, -> { joins(:status).merge(Status.active) }


end
