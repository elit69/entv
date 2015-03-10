class Product < ActiveRecord::Base
  belongs_to :category
  has_one :spec, dependent: :destroy, inverse_of: :product
  has_many :import_products
  has_many :imports, through: :import_products, source: :import

  accepts_nested_attributes_for :spec
  mount_uploader :picture, PictureUploader

  validates_associated :category
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :price
  validates_numericality_of :price
  validates_presence_of :company
end
