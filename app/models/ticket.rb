class Ticket < ApplicationRecord
    belongs_to :user
    validates :title, presence: true, length: { minimum: 5, maximum: 25 }
    validates :description, presence: true, length: { minimum: 10, maximum: 100 }
    validates :users_id, presence: true
end