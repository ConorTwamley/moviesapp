class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :poster
      t.text :trailer
      t.date :released_on
      t.string :rating
      t.integer :genre_id

      t.timestamps
    end
  end
end
