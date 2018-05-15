class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.integer :duration
      t.references :director, foreign_key: true
      t.timestamp :release_date
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
