class Task < ActiveRecord::Base
  attr_accessible :completed, :description, :list_id
  belongs_to :list

validates :description,  :presence => true,
	format: {
			with: /^[a-zA-Z0-9_-]+$/,
			message: 'Must be correctly formatted'
		}
  scope :completed, where(:completed => true)
  scope :incomplete, where(:completed => false)

end
