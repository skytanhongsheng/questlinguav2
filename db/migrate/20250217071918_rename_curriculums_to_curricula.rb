class RenameCurriculumsToCurricula < ActiveRecord::Migration[7.1]
  def change
    rename_table :curriculums, :curricula
  end
end
