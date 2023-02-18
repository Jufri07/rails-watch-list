class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.string :comment
      t.references :movie, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true
      t.index [:movie, :list], unique: true

      t.timestamps
    end
  end
end
