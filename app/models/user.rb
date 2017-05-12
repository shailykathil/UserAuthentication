class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :regions, through: :user_regions
  has_many :user_region
  belongs_to :company
  belongs_to :user_role
  has_many :images, as: :imagable
  validates :company_id, presence: true
  validates :role_id, presence: true
  validates :first_name, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
