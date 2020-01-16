class Activity < ApplicationRecord
    has_many :area_activities
    has_many :areas, through: :area_activities
    has_many :activity_categories
    has_many :categories, through: :activity_categories
    default_scope { order(created_at: :desc) }
    has_rich_text :content
    enum status: { draft: 0, pending: 1, published: 2, canceled: 3 }, _prefix: :status
    enum group: { activity: 0, spot: 1 }
    validates :title, presence: true
end
