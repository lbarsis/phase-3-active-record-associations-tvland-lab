
  # require_relative 'faker'
  # create_table "actors", force: :cascade do |t|
  #   t.string "first_name"
  #   t.string "last_name"
  # end

  # create_table "characters", force: :cascade do |t|
  #   t.string "name"
  #   t.integer "actor_id"
  #   t.integer "show_id"
  #   t.string "catchphrase"
  # end

  # create_table "networks", force: :cascade do |t|
  #   t.string "call_letters"
  #   t.integer "channel"
  # end

  # create_table "shows", force: :cascade do |t|
  #   t.string "name"
  #   t.string "day"
  #   t.string "season"
  #   t.string "genre"
  #   t.integer "network_id"
  # end

  # Create 20 Actors
  20.times do 
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    Actor.create(first_name: first_name, last_name: last_name)
  end

  #create 5 Networks
  5.times do 
    Network.create(
      call_letters: Faker::Address.country_code,
      channel: rand(1..50)
    )
  end

    #create 10 Shows
    10.times do 
      Show.create(
        name: Faker::Book.title,
        day: "Tuesday",
        season: '4',
        genre: Faker::Book.genre,
        network_id: rand(Network.all.first.id..Network.all().last.id)
      )
    end

  # create 20 characters
  20.times do 
    Character.create(
      name: "#{Faker::Name.first_name} #{Faker::Name.last_name}",
      catchphrase: Faker::Company.catch_phrase,
      actor_id: rand(Actor.all.first.id..Actor.all().last.id),
      show_id: rand(Show.all.first.id..Show.all.last.id)
    )
  end