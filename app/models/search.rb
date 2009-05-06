class Search < ActiveRecord::Base
  def after_validation_on_create
    self.normalizedterm = String.new(self.searchterm)
    #normalization routines go here
    self.normalizedterm = self.normalizedterm.gsub!(/(_|-|:|\.)+|/,'').downcase!
  end
end


