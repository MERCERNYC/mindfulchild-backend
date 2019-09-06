class Activity < ApplicationRecord
    belongs_to :category

    validates :name, :description, presence: true
end
