class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,:validatable

  has_many :books
  attachment :profile_image, destroy: false


  validates :name, length: {maximum: 20, minimum: 2}
  validates :introduction, length: {maximum: 50}
end