class Patient < ActiveRecord::Base
	has_many :consultations
	has_many :medecins, :through => :consultations
end
