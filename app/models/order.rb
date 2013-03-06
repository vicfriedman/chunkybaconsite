class Order < ActiveRecord::Base
  attr_accessible :customer, :price, :quantity, :customer_name

  belongs_to :customer

  validates :quantity, :presence => true

  before_save :calculate_price

  def calculate_price
    self.price = self.quantity * 5
  end

  def customer_name=(str)
    self.customer = Customer.find_or_create_by_name(str)
  end

  def customer_name
    self.customer.name if self.customer
  end
end
