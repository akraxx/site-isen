class Utilisateur < ActiveRecord::Base
	validates_presence_of :login, :pwd, :email
	validates_uniqueness_of :login, :email
	
	def self.sha1(pass)
    	Digest::SHA1.hexdigest("---changme--#{pass}--")
 	 end

    def self.authenticate_safely(user_name, password)
      find(:first, :conditions => [ "login = ? AND pwd = ?", user_name, password ])
    end
    
    def self.retour(phrase)
    	returning String.new do |fin|
    		fin << phrase + 'test'
    	end
    end
end