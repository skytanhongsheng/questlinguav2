class RemoveUserFromLessons < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :lessons, :users
    remove_reference :lessons, :user
  end
end
