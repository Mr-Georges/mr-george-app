class Hotel < ApplicationRecord
    #before_validation :set_hotel_status
    has_rich_text :description
    default_scope { order(created_at: :desc) }
    enum status: { draft: 0, pending: 1, published: 2, canceled: 3 }, _prefix: :status
    validates :name, presence: true
    #validates :status, presence: true
end
