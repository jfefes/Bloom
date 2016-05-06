class CreateComponentProps < ActiveRecord::Migration
  def change
    create_table :component_props do |t|
      t.belongs_to  :react_component, index: true, foreign_key: true
      t.string      :prop_name
      
      t.timestamps  null: false
    end
  end
end
