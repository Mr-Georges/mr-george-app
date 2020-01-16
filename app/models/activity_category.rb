class ActivityCategory < ApplicationRecord
    belongs_to :Activity
    belongs_to :category
end
