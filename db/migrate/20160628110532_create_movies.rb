class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title, limit: 50
      t.text :description
      t.text :trailer_url
      t.string :genre, limit: 20
      t.integer :duration, limit: 5
      t.boolean :featured
      t.boolean :approved
      t.date :release_date

      t.timestamps null: false
    end
    add_index :movies, :genre
  end
end
