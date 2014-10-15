class Product < ActiveRecord::Base
  validates :title, :description, :image_url, presence: true
  validates :title, uniqueness: true
  # `allow_blank: true` avoids getting multiple error messages when the field is
  # blank (i.e., when the field is blank, we just get 'this field cannot be
  # empty' and ignore the 'must be a gif/jpg/png' error message); this is what
  # the tutorial suggests, but isn't hiding errors always a bad idea?
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG, or PNG image.'
  }
  # FIXME: testing against 0.01 (1 cent) allows bogus value `3.001'
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
end
