class InitializeDatabase < ActiveRecord::Migration
	def self.up
		create_table "genes" do |t|
			t.column "name", :string
		end
		
		create_table "keywords" do |t|
			t.column "name", :string
		end
		
		create_table "markers" do |t|
			t.column "name", :string
		end
		
	end
	
	def self.down
		drop_table :genes
		drop_table :keywords
		drop_table :markers
	end
end
