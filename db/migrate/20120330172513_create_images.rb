class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name, :description, :url
      t.integer :votes

      t.timestamps
    end
  end
end
