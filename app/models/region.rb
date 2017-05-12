class Region < ApplicationRecord
has_many :users, through: :user_regions
end
