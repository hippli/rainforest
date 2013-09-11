class Product < ActiveRecord::Base

  def price
    dollar_value = self.price_in_cents.to_f / 100
    "#{dollar_value.to_s(:currency)}"

  end


end
