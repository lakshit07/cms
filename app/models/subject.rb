class Subject < ActiveRecord::Base
	
 scope :visible, -> { where(:visible => true) }
 scope :invisible, -> { where(:visible => false) }
 scope :search, -> (query) { where(["name LIKE ?", "%#{query}%"]) }


	has_many :pages	

	validates_presence_of :name

	validates_length_of :name , within: 1..20

 	validates_uniqueness_of :name 

 
end
