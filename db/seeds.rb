# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    30.times do User.create(
        name: Faker::Name.first_name,  
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