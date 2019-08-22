User.destroy_all
UserSkill.destroy_all
Project.destroy_all
Skill.destroy_all
UserProject.destroy_all




30.times do User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,  
    money: Faker::Number.positive
    # password: Faker::Games::Zelda.character,
)
end
rails = Skill.create(name: 'Rails')
js = Skill.create(name: 'JavaScript')
css = Skill.create(name: 'CSS')
landscaping = Skill.create(name: 'Landscaping')
plumbing = Skill.create(name: 'Plumbing')
avtech = Skill.create(name: "Audio Visual Tech")

30.times do Project.create(
    title: Faker::Food.dish,
    pay: Faker::Number.positive,
    skill_id: Skill.all.sample.id
)
end

50.times do UserProject.create(
    user_id: User.all.sample.id, 
    project_id: Project.all.sample.id,
    status: Faker::Number.between(from: 1, to: 10)
) 
end
50.times do UserSkill.create(
    user_id: User.all.sample.id,
    skill_id: Skill.all.sample.id,
    level: Faker::Number.between(from: 1, to: 10)
)
end