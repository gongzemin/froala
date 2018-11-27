class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable, :omniauthable

  has_many :articles, dependent: :destroy
  has_one_attached :avatar

  def username
  	self.email.split('@')[0]
  end
end
