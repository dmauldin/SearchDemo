require File.dirname(__FILE__) + '/../test_helper'

class SearchCacheTest < ActiveSupport::TestCase
  should "be valid" do
    assert Search.new.valid?
  end
  
  should_have_many :searches
  
end
