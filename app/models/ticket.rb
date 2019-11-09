class Ticket < ApplicationRecord
    belongs_to :user
    has_many :ticket_categories
    has_many :categories, through: :ticket_categories

    validates :title, presence: true, length: { minimum: 5, maximum: 25 }
    validates :description, presence: true, length: { minimum: 10, maximum: 100 }
    validates :user_id, presence: true


    scope :complete, -> { where(complete: true) }



end