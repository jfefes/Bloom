class CreateComponentContents < ActiveRecord::Migration
  def change
    create_table :component_contents do |t|
      t.belongs_to  :page_component, index: true, foreign_key: true
      t.string      :name
      t.text        :value

      t.timestamps  null: false
    end
  end
end
