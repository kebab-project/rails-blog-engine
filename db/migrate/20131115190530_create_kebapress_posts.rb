class CreateKebapressPosts < ActiveRecord::Migration
  def change
    create_table :kebapress_posts do |t|
      t.string :title
      t.text :body
      t.boolean :published
      t.boolean :commentable
      t.integer :author_id
      t.references :category, index: true

      t.timestamps
    end
  end
end
