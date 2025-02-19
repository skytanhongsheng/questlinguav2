class AddUserToCurriculums < ActiveRecord::Migration[7.1]
  def change
    add_reference :curriculums, :user, foreign_key: true
  end
end
