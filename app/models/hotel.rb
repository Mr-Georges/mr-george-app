class Hotel < ApplicationRecord
    #before_validation :set_hotel_status

    has_rich_text :description

    enum status: {
        published: "published", draft: "draft", pending: "pending", canceled: "canceled"
    }, _prefix: :status

    validates :name, presence: true
    #validates :status, presence: true
end
