class Cash < ActiveRecord::Base
	belongs_to :employee
	belongs_to :company
	validates_presence_of :value
end
