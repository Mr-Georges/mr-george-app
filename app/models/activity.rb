class Activity < ApplicationRecord
    has_many :area_activities
    has_many :areas, through: :area_activities
    has_rich_text :content
    enum status: { draft: 0, pending: 1, published: 2, canceled: 3 }, _prefix: :status
    enum category: { sea: 0, city: 1, tour: 2, country_side: 3 }
    validates :title, presence: true
end
