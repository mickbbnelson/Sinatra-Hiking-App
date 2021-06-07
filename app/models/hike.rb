class Hike < ActiveRecord::Base
    belongs_to :user
    validates :location, :distance, :terrain, :description, presence: true
end
