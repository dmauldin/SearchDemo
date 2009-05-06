class CreateSearchCache < ActiveRecord::Migration
  def self.up
    create_table (:keyword, :id => false, :primary_key => 'keyword_id') do |t|
      t.references :object
      t.integer :keyword_id
      t.integer :primary_id
      t.string :keyword
      t.string :keyword_normalized
      t.integer :keyword_type_id
      t.integer :object_class_id
    end
  end

  def self.down
    drop_table :keyword
  end
end
