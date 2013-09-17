class Product < ActiveRecord::Base

  has_many :reviews
  has_many :users, :through => :reviews

  # attr_accessible :description, :name, :price_in_cents - not required in rails 4.0

  validates :description, :name, :presence => true
  validates :price_in_cents, :numericality => {:only_integer => true}

  def price
    dollar_value = self.price_in_cents.to_f / 100
    "#{dollar_value.to_s(:currency)}"

  end


end