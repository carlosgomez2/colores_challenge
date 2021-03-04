# frozen_string_literal: true

# Normal user
user = User.create(
  email: 'u@mail.com',
  password: 'secret',
  password_confirmation: 'secret'
)

puts "User #{user.email} created!"

# Admin user
user = User.create(
  email: 'a@mail.com',
  password: 'secret',
  password_confirmation: 'secret',
  type: 'AdminUser'
)

puts "User #{user.email} created!"

4.times do
  color = Color.create(
    name: 'Yellow Material',
    color: '#FFEB3B',
    pantone: '11-0601 TPG',
    year: '2021'
  )
  color.save!

  color = Color.create(
    name: 'Indigo',
    color: '#3F51B5',
    pantone: '11-0601 TPG',
    year: '2021'
  )
  color.save!

  color = Color.create(
    name: 'Pink Vibrant',
    color: '#E91E63',
    pantone: '11-0601 TPG',
    year: '2021'
  )
  color.save!

  color = Color.create(
    name: 'Great Amber',
    color: '#FFC107',
    pantone: '11-0601 TPG',
    year: '2021'
  )
  color.save!

  color = Color.create(
    name: 'Nice Teal',
    color: '#009688',
    pantone: '11-0601 TPG',
    year: '2021'
  )
  color.save!

  color = Color.create(
    name: 'Blue',
    color: '#2196F3',
    pantone: '11-0601 TPG',
    year: '2021'
  )
  color.save!

  color = Color.create(
    name: 'Red Harmony',
    color: '#f44336',
    pantone: '11-0601 TPG',
    year: '2021'
  )
  color.save!

  color = Color.create(
    name: 'Cyan',
    color: '#00BCD4',
    pantone: '11-0601 TPG',
    year: '2021'
  )
  color.save!

  color = Color.create(
    name: 'Brown',
    color: '#795548',
    pantone: '11-0601 TPG',
    year: '2021'
  )
  color.save!

  color = Color.create(
    name: 'Light Grey',
    color: '#CFD8DC',
    pantone: '11-0601 TPG',
    year: '2021'
  )
  color.save!
end

puts '36 colors created!'
