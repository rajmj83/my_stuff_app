class Category < ActiveRecord::Base
  has_many :category_items
  has_and_belongs_to_many :editors, :class_name => "AdminUser"
  # attr_accessible :title, :body
  scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"])}
  validates_presence_of :name, :message => "Missing category name. It cant be blank"
  validates_presence_of :symbol, :message => "Missing category symbol. It cant be blank"
  validates_length_of :name, :minimum => 2, :message => "Category name is too short"
  validates_length_of :symbol, :maximum => 4, :message => "Category symbol is too long"
  validates_uniqueness_of :name,:message => "This category name already exists. Use a different one."
  validates_uniqueness_of :symbol, :message => "This category symbol already exists. Use a different one."
  
end
