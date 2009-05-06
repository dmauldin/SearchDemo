require File.dirname(__FILE__) + '/../test_helper'

class SearchesControllerTest < ActionController::TestCase
  context "index action" do
    should "render index template" do
      get :index
      assert_template 'index'
    end
  end
  
  context "show action" do
    should "render show template" do
      get :show, :id => Search.first
      assert_template 'show'
    end
  end
  
  context "new action" do
    should "render new template" do
      get :new
      assert_template 'new'
    end
  end
  
  context "create action" do
    should "render new template when model is invalid" do
      Search.any_instance.stubs(:valid?).returns(false)
      post :create
      assert_template 'new'
    end
    
    should "redirect when model is valid" do
      Search.any_instance.stubs(:valid?).returns(true)
      post :create
      assert_redirected_to search_url(assigns(:search))
    end
  end
  
  context "edit action" do
    should "render edit template" do
      get :edit, :id => Search.first
      assert_template 'edit'
    end
  end
  
  context "update action" do
    should "render edit template when model is invalid" do
      Search.any_instance.stubs(:valid?).returns(false)
      put :update, :id => Search.first
      assert_template 'edit'
    end
  
    should "redirect when model is valid" do
      Search.any_instance.stubs(:valid?).returns(true)
      put :update, :id => Search.first
      assert_redirected_to search_url(assigns(:search))
    end
  end
  
  context "destroy action" do
    should "destroy model and redirect to index action" do
      search = Search.first
      delete :destroy, :id => search
      assert_redirected_to searches_url
      assert !Search.exists?(search.id)
    end
  end
end
