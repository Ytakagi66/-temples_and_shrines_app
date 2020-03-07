class Temple < ApplicationRecord
    validates :name, presence: true
    validates :adress, presence: true
    validates :nearest_station, presence: true
    validates :location, presence: true
    validates :user_id, presence: true
end
