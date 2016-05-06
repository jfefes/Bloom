class CreatePageComponents < ActiveRecord::Migration
  def change
    create_table :page_components do |t|
      t.belongs_to   :page, index: true, foreign_key: true
      t.belongs_to   :react_component, index: true, foreign_key: true
      t.integer      :order, null: false
      t.string       :custom_class

      t.timestamps    null: false
    end
  end
end
