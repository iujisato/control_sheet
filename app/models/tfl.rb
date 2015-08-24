class Tfl < ActiveRecord::Base
	belongs_to :company
	has_many :employees
end
