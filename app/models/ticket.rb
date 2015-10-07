class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :status

  validates :titulo, presence: true
end
