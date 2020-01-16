class Category < ApplicationRecord
    has_many :activity_categories
    has_many :categories, through: :activity_categories
    enum status: { draft: 0, pending: 1, published: 2, canceled: 3 }, _prefix: :status
    validates :name, presence: true
end
