class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :name
      t.text :url
      t.text :description

      t.timestamps null: false
    end
  end
end
