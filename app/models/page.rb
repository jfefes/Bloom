class Page < ActiveRecord::Base
  extend FriendlyId

  friendly_id :title, use: [:slugged, :finders]

  has_many :page_component, dependent: :destroy

  validates :title, presence: true,
                    length: { minimum: 3 }
end
