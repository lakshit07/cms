class Section < ActiveRecord::Base

	belongs_to :page
	has_many :section_edits
	has_many :editors , :through => :section_edits , :class_name => "AdminUser"

	Content_types = ['HTML' , 'text']

	validates_presence_of :name
	validates_uniqueness_of :name

	validates_inclusion_of :content_type , :in => Content_types , :message => "Must be one of #{Content_types.join(',')}"

	validates_presence_of :content

end
