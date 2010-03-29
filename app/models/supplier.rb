class Supplier < ActiveRecord::Base
  has_many :products

  validates_presence_of :name,:initial
  validates_uniqueness_of :initial
  
  default_scope :order => :name
end
