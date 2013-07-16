class CategoriesController < ApplicationController
  
  layout 'admin'
  
  before_filter :confirm_logged_in
  
  def index
    list
    render('list')
  end
  
  def list
    @categories = Category.all
  end  
  
  
  def show
    @category = Category.find(params[:id])
  end
  
  def new
    @category = Category.new
    @category_count = Category.count + 1
  end
  
  def create
    # Instantiate a new object using form parameters
    @category = Category.new(params[:category])
    # Save the object
    if @category.save
      # If save succeeds, redirect to the list action
      flash[:notice] = "********* Category created ************"
      redirect_to(:action => 'list')
    else
      # If save fails, redisplay the form so user can fix problems
      #@category_count = Category.count + 1
      flash[:notice] = "********* Category not created ************"
      @error_message = "It seems there was a validation error. Please try again."
      render('new')
    end
  end  
  
  
  def edit
    @category = Category.find(params[:id])
    # I added below only for my own testing purpose.
    @category_id = @category.id
  end  
  
  def update
      @category = Category.find(params[:id])
    # Save the object
    if @category.update_attributes(params[:category])
      # If save succeeds, redirect to the list action
      flash[:notice] = "********* Category saved ************"
      redirect_to(:action => 'show', :id => @category.id )
    else
      # If save fails, redisplay the form so user can fix problems
      #@category_count = Category.count + 1
      render('edit')
    end
    
  end 
  
  
  def delete
    @category = Category.find(params[:id])
  end  
  
  
  def destroy
    Category.find(params[:id]).destroy
    flash[:notice] = "********* Category destroyed ************"
    redirect_to(:action => 'list')
    
  end  
    
  
end
