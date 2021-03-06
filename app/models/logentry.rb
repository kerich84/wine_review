class Logentry < ActiveRecord::Base
  belongs_to :wine
  STARS = 1..5
	validates :name, :raiting, :tasted_on, :comments, :location,  presence: true
	validates :raiting, inclusion: { in: STARS, message: "must be from #{STARS.first} to #{STARS.last}" }
end
