class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :regions, through: :user_regions
  has_many :user_region
  belongs_to :company
  belongs_to :user_role
  has_many :images, as: :imagable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
