class List < ActiveRecord::Base
  attr_accessible :item, :title
  has_many :tasks
end
