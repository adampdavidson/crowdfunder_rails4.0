class Project < ActiveRecord::Base
	belongs_to :users

	validates :title, presence: true, length: {maximum: 100}
	validates :teaser, presence: true, length: {maximum: 255}
	validates :description, presence: true
	validates :goal, presence: true, numericality: {greater_than: 0, allow_blank: true}

end