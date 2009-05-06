class SearchCachesController < ApplicationController
  def index
    @search_caches = SearchCache.all
  end
  
  def show
    @search_cache = SearchCache.find(params[:id])
  end
  
  def new
    @search_cache = SearchCache.new
  end
  
  def create
    @search_cache = SearchCache.new(params[:search_cache])
    if @search_cache.save
      flash[:notice] = "Successfully created searchcache."
      redirect_to @search_cache
    else
      render :action => 'new'
    end
  end
  
  def edit
    @search_cache = SearchCache.find(params[:id])
  end
  
  def update
    @search_cache = SearchCache.find(params[:id])
    if @search_cache.update_attributes(params[:search_cache])
      flash[:notice] = "Successfully updated searchcache."
      redirect_to @search_cache
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @search_cache = SearchCache.find(params[:id])
    @search_cache.destroy
    flash[:notice] = "Successfully destroyed searchcache."
    redirect_to search_caches_url
  end
end
