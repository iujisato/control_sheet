class Tfl < ActiveRecord::Base
	belongs_to :company
	has_many :employees
	validates_presence_of :name
end
