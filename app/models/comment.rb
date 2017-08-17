class Comment < ActiveRecord::Base
	belongs_to :blog 

	validates :description, :presence => true
end	