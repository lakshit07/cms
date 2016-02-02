class DemoController < ApplicationController

	layout 'admin'
  
  def index
  	#render('hello')
	#redirect_to('http://www.google.com')
  end

  def hello  	
	#@array = [1,2,3,4,5]  	
	#render(:text => 'hello everyone! Lakshit here :)')    	
  end

end
