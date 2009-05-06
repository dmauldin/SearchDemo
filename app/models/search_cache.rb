class SearchCache < ActiveRecord::Base
  set_table_name 'keyword'
  set_primary_key 'keyword_id'
  has_many :searches
end

