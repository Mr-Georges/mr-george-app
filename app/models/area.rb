class Area < ApplicationRecord
    has_many :area_activities
    has_many :activities, through: :area_activities
    enum status: { draft: 0, pending: 1, published: 3, canceled: 4 }, _prefix: :status
    validates :name, presence: true
end
