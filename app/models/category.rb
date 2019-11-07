class Category < ApplicationRecord
    has_many :ticket_categories
    has_many :tickets, through: :ticket_categories 
    validates :name, presence: true 
    validates_uniqueness_of :name 
end