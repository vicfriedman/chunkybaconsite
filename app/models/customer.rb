class Customer < ActiveRecord::Base
  attr_accessible :city, :name, :state

  has_many :orders
end
