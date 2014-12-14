class Medecin < ActiveRecord::Base
	has_many :consultations
	has_many :patients, :through => :consultations
end
