class ReactComponent < ActiveRecord::Base
  has_many :component_prop
  has_many :page_component
end
