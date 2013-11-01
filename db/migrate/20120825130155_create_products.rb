class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :description
      t.string :image_url
      t.float :price
      t.string :title
      t.string :created_at
    end
  end
end
