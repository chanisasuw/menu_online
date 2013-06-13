  class Food < ActiveRecord::Base
    belongs_to :category

    has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
