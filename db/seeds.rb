def params_house

  {
    address: Faker::Address.street_address,
    neighborhood: [River North, Streeterville, New Eastside, The Loop, Near North, Gold Coast, Old Town, Old Town Triangle, Goose Island, Cabrini Green, River West, Lincoln Park, Wicker Park, Bucktown, Humboldt Park, Logan Square, Ukranian Village].sample.to_s
    number_of_rooms: (1..4).to_a.sample,
    price: (300..3000).to_a.sample,
    phone: Faker::PhoneNumber.cell_phone,
    email: Faker::Internet.email,
    description: descriptions.sample
    minimum_weeks: 2,
    maximum_weeks: 10
  }

end

20.times do
  House.create(params_house)
end

descriptions = [
"Located just a block from campus, this beautiful house features...",
"We are moving to California for work and need to sublet starting...",
"I am looking to sublet my studio apartment for October 1st...",
"Fantastic house in great area has room for one more girl...",
"This is a secure, safe, quiet neighborhood, with easy access to I-90...",
"We're a pretty active & busy group of girls, and home is a haven so the house is relatively quiet",
"This is a great option for relocators, interns, medical rotations...",
"I need to sublease my amazing apartment as soon as possible.
Current lease is available with the option of a lease extension.",
"A 6 Month sub-lease in Lincoln Park -- Corner of Sheffield and Armitage ave",
"Come check out these amazing views in this Building. Only $695-725 Studios & $725-$825 One Bedrooms"
]