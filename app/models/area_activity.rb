class AreaActivity < ApplicationRecord
    belongs_to :area
    belongs_to :activity
    default_scope { order(created_at: :desc) }
end
