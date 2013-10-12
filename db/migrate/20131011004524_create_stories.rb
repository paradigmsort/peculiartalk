class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :content
      t.string :name

      t.timestamps
    end
  end
end
