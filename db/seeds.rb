20.times do
  Category.create!([
    {name: Faker::Name.name}
  ])
end

20.times do
  QuestionBank.create!([
    {name: Faker::Name.name, category_id: 2}
  ])
end

question_banks = QuestionBank.all

question_banks.each do |question_bank, m|
  puts "bank no #{m}"
  30.times do |n|
    Question.create!([
      {content: Faker::Lorem.sentence, question_bank_id: question_bank.id}
    ])
    puts "question no #{n}"
  end
end

questions = Question.all

puts "-----------BEGIN CREATING ANSWERS--------"

questions.each do |question, n|
  puts "question no #{n}"
  4.times do
    Answer.create!([
      {content: Faker::Lorem.sentence, question_id: question.id}
    ])
  end
end
