class Post < ApplicationRecord
	self.per_page=5
	has_many :comments
	belongs_to :creator,
	class_name: User.name, foreign_key: :user_id

	mount_uploader :image_url, PictureUploader

end
