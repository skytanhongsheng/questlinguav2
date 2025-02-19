require 'faker'

puts "Seeding Lessons..."

# Fetch all curriculums, ensuring there is at least one
curriculums = Curriculum.all
if curriculums.empty?
  curriculums << Curriculum.create!(name: "Default Curriculum")
end

# Create lessons for each curriculum
curriculums.each do |curriculum|
  10.times do
    Lesson.create!(
      title: Faker::Educator.course_name,
      description: Faker::Lorem.paragraph(sentence_count: 3),
      score: rand(1..100),
      curriculum_id: curriculum.id
    )
  end
end

puts "Finished seeding lessons!"
