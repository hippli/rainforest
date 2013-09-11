class Product < ActiveRecord::Base

  attr_accessible :description, :name, :price_in_cents

  validates :description, :name, :presence => true
  validates :price_in_cents, :numericality => {:only_integer => true}

  def price
    dollar_value = self.price_in_cents.to_f / 100
    "#{dollar_value.to_s(:currency)}"

  end


end
