class Post < ActiveRecord::Base
	validates_presence_of :name, :title
	validates_length_of :title, :minimum => 5
	validates_length_of :title, :maximum => 30
	has_many :comments, :dependent => :destroy
end
