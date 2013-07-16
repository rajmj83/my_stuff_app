class CategoryItemsController < ApplicationController
  
  def index
    list
    render 'list'
  end

  def list
  #@catitems = CategoryItem.find_by_public_user_id(params[:id])
   #@catitems = CategoryItem.find(:public_user_id => 1)
  # @catitems = CategoryItem.where(:public_user_id => session[:user_id])
  #@catitems = CategoryItem.where(:public_user_id => 1)
  #working.. 
  @catitems = CategoryItem.where(:public_user_id => (params[:id]))
  #@catitems = CategoryItem.find(:all)
  #@catitems = CategoryItem.find(:public_user_id => (params[:id]))
  end

  def show
  #  @category-items = CategoryItem.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
    #@catitem = CategoryItem.find(params[:id])
    @categoryitem = CategoryItem.find(params[:id])
    # I added below only for my own testing purpose.
    #@@category_item_id = @catitems.id
  end

  def update
      @categoryitem = CategoryItem.find(params[:id])
    # Save the object
    if @categoryitem.update_attributes(params[:category_items])
      # If save succeeds, redirect to the list action
      flash[:notice] = "********* Category Item saved ************"
      redirect_to(:action => 'list', :id => @categoryitem.id )
    else
      # If save fails, redisplay the form so user can fix problems
      #@category_count = Category.count + 1
      render('edit')
    end
  end

  def delete
  end

  def destroy
  end
  
  def showcats
  @categories = Category.all  
  end  
  
end
