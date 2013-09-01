def params_house

  {
    address: Faker::Address.street_address,
    neighborhood: Faker::Address.city,
    number_of_rooms: (1..5).to_a.sample,
    price: (1000..3000).to_a.sample,
    phone: Faker::PhoneNumber.cell_phone,
    email: Faker::Internet.email,
    description: Faker::Lorem.paragraph(10),
    minimum_weeks: 2,
    maximum_weeks: 10
  }

end

20.times do
  House.create(params_house)
end
