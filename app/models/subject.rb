class Subject < ActiveRecord::Base
	
	has_many :pages	

	validates_presence_of :name

	validates_length_of :name , within: 1..20

 	validates_uniqueness_of :name 

 # scope :visible, where(:visible => true)
 # scope :invisible, where(:visible => false)
 # scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"])}

end
