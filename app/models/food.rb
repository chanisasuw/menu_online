  class Food < ActiveRecord::Base
    belongs_to :category

    has_attached_file :photo, :styles => { :medium => "300x180#", :thumb => "100x50#" }
end
