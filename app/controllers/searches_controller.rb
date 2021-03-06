class SearchesController < ApplicationController
  def index
    @searches = Search.all
  end
  
  def show
    #this would normally just show @search but it made sense to show the results as well since the purpose is not just create a search object
    @search = Search.find(params[:id])
    @results = SearchCache.find(:all, :conditions => ['keyword_normalized=?', @search.normalizedterm])
    
  end
  
  def new
    @search = Search.new
  end
  
  def create
    @search = Search.new(params[:search])
    if @search.save
      flash[:notice] = "Successfully created search."
      redirect_to @search
    else
      render :action => 'new'
    end
  end
  
  def edit
    @search = Search.find(params[:id])
  end
  
  def update
    @search = Search.find(params[:id])
    if @search.update_attributes(params[:search])
      flash[:notice] = "Successfully updated search."
      redirect_to @search
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @search = Search.find(params[:id])
    @search.destroy
    flash[:notice] = "Successfully destroyed search."
    redirect_to searches_url
  end
end
