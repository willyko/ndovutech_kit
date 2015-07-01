class CreateKits < ActiveRecord::Migration
  def change
    create_table :kits do |t|
      t.string :title
      t.text :mission

      t.timestamps null: false
    end
  end
end
