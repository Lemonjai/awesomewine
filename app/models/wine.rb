class Wine < ApplicationRecord
	mount_uploader :image, ImageUploader
end
