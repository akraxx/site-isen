class Comment < ActiveRecord::Base
	validates_presence_of :body, :commenter
	belongs_to :post
end
