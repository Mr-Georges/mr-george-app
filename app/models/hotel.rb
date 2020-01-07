class Hotel < ApplicationRecord
    #before_validation :set_hotel_status
    has_rich_text :description
    enum status: { draft: 0, pending: 1, published: 3, canceled: 4 }, _prefix: :status
    validates :name, presence: true
    #validates :status, presence: true
end
