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
  validate :end_date_after_start_date?
   def end_date_after_start_date?
     if end_date < start_date
       errors.add :end_date, "must be after start date"
      end
   end
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
