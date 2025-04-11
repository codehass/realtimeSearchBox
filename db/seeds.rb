# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

articles = [
  { title: "The Importance of Time Management", content: "Time management is a crucial skill for achieving personal and professional goals. By organizing your tasks and prioritizing them, you can improve productivity and reduce stress." },
  { title: "How to Stay Focused in a Digital World", content: "With distractions all around us, staying focused has become increasingly difficult. Techniques like setting specific goals and using productivity tools can help you stay on track throughout the day." },
  { title: "Benefits of a Healthy Diet", content: "Eating a balanced diet is essential for maintaining good health. A healthy diet can boost energy levels, improve mood, and prevent chronic diseases such as heart disease and diabetes." },
  { title: "The Power of Positive Thinking", content: "Positive thinking can help you overcome challenges and stay motivated. By focusing on solutions rather than problems, you can develop a more resilient mindset." },
  { title: "Building Effective Communication Skills", content: "Communication is key in both personal and professional relationships. By being clear, concise, and active in listening, you can improve your interactions and avoid misunderstandings." },
  { title: "The Role of Exercise in Mental Health", content: "Regular physical activity not only strengthens the body but also boosts mental health. Exercise can reduce anxiety, depression, and improve your overall mood and well-being." },
  { title: "How to Build a Personal Brand", content: "A personal brand helps you stand out in your industry. By defining your values, showcasing your expertise, and being consistent, you can build a strong and recognizable personal brand." },
  { title: "The Importance of Networking for Career Growth", content: "Networking opens doors to new opportunities. Building relationships with others in your field can help you learn, grow, and advance your career through mentorship and collaborations." },
  { title: "Understanding the Basics of Financial Planning", content: "Financial planning is essential for managing your money and achieving financial goals. Creating a budget, saving for retirement, and investing wisely are key components of sound financial planning." },
  { title: "How to Overcome Procrastination", content: "Procrastination can be a major obstacle to productivity. By breaking tasks into smaller steps and setting deadlines, you can overcome procrastination and stay on track to meet your goals." }
]

articles.each do |article|
  Article.create!(article)
end
