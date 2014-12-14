class Consultation < ActiveRecord::Base
	belongs_to :medecin
	belongs_to :patient
	
	validates_presence_of :date
  validates_confirmation_of :email

  def self.paid_with_card?(payment_type)
    if test?
      return payment_type == "card"
    end
  end

  def self.test?
    1
  end
end
