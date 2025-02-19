class CreateLessons < ActiveRecord::Migration[7.1]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :description
      t.integer :score
      t.references :user, null: false, foreign_key: true
      t.references :curriculum, null: false, foreign_key: true

      t.timestamps
    end
  end
end
