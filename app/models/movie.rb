class Movie < ApplicationRecord
	belongs_to :genre
	validates :title, presence: true
	validates :title, length:{in: 2..20 }
	validates :title, uniqueness: true
	validate :must_have_valid_trailer
	
	def must_have_valid_trailer
		unless trailer.include?("<iframe")
			errors.add(:trailer, "Must include an iframe tag")
		end
	end
	
end
