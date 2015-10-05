class Employee < ActiveRecord::Base
  belongs_to :company
  belongs_to :tfl
  has_many :cashes
  validates_presence_of :name
end
