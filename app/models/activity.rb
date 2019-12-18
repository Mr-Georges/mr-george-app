class Activity < ApplicationRecord
    has_many :area_activities
    has_many :areas, through: :area_activities
    has_rich_text :content
    enum status: { draft: 0, pending: 1, published: 3, canceled: 4 }, _prefix: :status
    enum category: { sea: 0, city: 2, tour: 3 }
    validates :title, presence: true
end
