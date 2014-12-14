class Produit < ActiveRecord::Base
	validates_presence_of :nom, :description
	has_many :comments
	def self.is_logged()
		"test"
	end
end
