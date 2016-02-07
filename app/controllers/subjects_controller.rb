class SubjectsController < ApplicationController

   before_filter :confirm_logged_in
   
   layout 'admin'

   def index
   	list
   	render('list')
   end	

   def list
     @subjects = Subject.order("subjects.position ASC")
   end		

   def show
   	@subject = Subject.find(params[:id])
   end

   def new
      @subject = Subject.new(:visible => "false")
      @subject_count = Subject.count + 1
   end   

   def create
      @subject = Subject.new(user_params)
      if @subject.save
         flash[:notice] = "Subject added successfully"
         redirect_to(:action => 'list')
      else
        @subject_count = Subject.count
         render('new')  
      end    
   end 

   def edit
      @subject = Subject.find(params[:id])
      @subject_count = Subject.count
   end  

   def update
      @subject = Subject.find(params[:id])

      if @subject.update_attributes(user_params)
         flash[:notice] = "Subject updated successfully"
         redirect_to(:action => 'show' , :id => @subject.id)
      else
         @subject_count = Subject.count
         render('edit')  
      end   
   end


   def delete
      @subject = Subject.find(params[:id])
   end  


   def destroy
      Subject.find(params[:id]).destroy
      flash[:notice] = "Subject deleted successfully"
      redirect_to(action: 'list')
   end   

   private

   def user_params
      params.require(:subject).permit(:name , :position , :visible)
   end  

end