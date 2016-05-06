class PageComponent < ActiveRecord::Base
  belongs_to :page
  belongs_to :react_component
  has_many :component_content, dependent: :destroy

end
