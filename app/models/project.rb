class Project < ActiveRecord::Base
	belongs_to :language

	validates :description, :presence =>true

end	