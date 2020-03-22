class Shrine < ApplicationRecord
    validates :name, presence: true
    validates :adress, presence: true
    validates :nearest_station, presence: true
    validates :location, null: false
    validates :user_id, null: false
end
