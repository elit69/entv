class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :username
  validates_uniqueness_of :username
  validates_format_of :phone_number, with: /\d+/, unless: :new_record?
  
  def member_since
    created_at.strftime "%b, %d %Y"
  end
end
