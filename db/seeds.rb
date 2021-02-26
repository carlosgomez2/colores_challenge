# frozen_string_literal: true

10.times do
  color = Color.create(
    name: 'White',
    color: '#fff',
    pantone: 'pantone_color_ref',
    year: '2021'
  )
  color.save!
end

puts '10 colors created!'
