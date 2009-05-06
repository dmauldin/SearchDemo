require File.dirname(__FILE__) + '/../test_helper'

class SearchTest < ActiveSupport::TestCase
  should "be valid" do
    assert Search.new.valid?
  end
  

  
end
