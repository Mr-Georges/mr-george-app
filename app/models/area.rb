class Area < ApplicationRecord
    has_many :area_activities
    has_many :activities, through: :area_activities
    enum status: { draft: 0, pending: 1, published: 2, canceled: 3 }, _prefix: :status
    validates :name, presence: true
end
