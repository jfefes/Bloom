class CreateReactComponents < ActiveRecord::Migration
  def change
    create_table :react_components do |t|
      t.string :nickname
      t.string :component_name

      t.timestamps null: false
    end
  end
end
