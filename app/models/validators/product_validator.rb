class ProductValidator < ActiveModel::Validator
  def validate(record)

    # Normally, we'd want to validate the price when it is first entered by the
    # human user in the web interface, *before* it is saved into the database as
    # a 'decimal' type. However, because Product inherits from
    # ActiveRecord::Base, we have to work with records as they are extract from
    # the database. This is probably just the way ActiveRecord works, and we
    # have to work around this by first converting the price to a String object
    # with "to_s".
    if price_excessive_granularity(record.price.to_s)
      record.errors[:price] = "must be in increments of 1 cent"
    end
  end

  private
    def price_excessive_granularity(price_str)
      !!(price_str =~ /\.\d{3,}/)
    end
end
