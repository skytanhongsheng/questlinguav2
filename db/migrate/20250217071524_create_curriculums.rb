class CreateCurriculums < ActiveRecord::Migration[7.1]
  def change
    create_table :curriculums do |t|
      t.string :title
      t.text :purpose
      t.integer :duration
      t.text :context
      t.integer :lesson_hours

      t.timestamps
    end
  end
end
