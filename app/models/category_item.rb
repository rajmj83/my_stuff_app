class CategoryItem < ActiveRecord::Base
  belongs_to :category
  # attr_accessible :title, :body
  belongs_to :publicusers, :class_name => "PublicUser"
  # attr_accessible :title, :body
  scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"])}
  validates_presence_of :name, :message => "Missing category name. It cant be blank"
  
end
