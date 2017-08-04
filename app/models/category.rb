class Category < ActiveRecord::Base
  has_many :post_categories
  has_many :posts, through: :post_categories

  validates :category, presence: true

  before_save :generate_slug

  def to_param
    self.slug
  end

  def generate_slug
    self.slug = self.category.gsub(" ", "-").downcase
  end
end