class Portfolio < ApplicationRecord
	validates_presence_of :main_image, :thumb_image
end
