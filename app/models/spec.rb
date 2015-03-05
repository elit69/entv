class Spec < ActiveRecord::Base
  belongs_to :product, inverse_of: :spec
end
