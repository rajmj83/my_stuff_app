class DemoController < ApplicationController
  
  layout 'admin'
  def index
# render ('hello')
# render ('/Users/rjosey/Sites/my_webapp/public/500.html')
# redirect_to :action => 'other_hello'
# redirect_to('other_hello')
  end
  
  
  def hello
  # render :text => 'sample text'
  # render :text => 'redirecting to http://www.lynda.com'
  # redirect_to("http://www.lynda.com")
  @array = [1,2,3,4]
  @id = params[:id].to_i
  @page = params[:page].to_i
  end  
   
  def other_hello
   render :text => 'sample text from other hello'
  end
  
  def text_helpers
  end
   
    
end
