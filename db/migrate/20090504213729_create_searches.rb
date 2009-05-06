class CreateSearches < ActiveRecord::Migration
  def self.up
    create_table :searches do |t|
      t.string :searchterm
      t.string :normalizedterm
      t.integer :keyword_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :searches
  end
end
