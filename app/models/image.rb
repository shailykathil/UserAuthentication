class Image < ApplicationRecord
	 belongs_to :imagable, polymorphic: true
	 mount_uploader :image_name, AvatarUploader
end
