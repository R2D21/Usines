require 'faker'

15.times do
   Assembly.create(name: Faker::Vehicle.engine)
end

15.times do
   Part.create(part_number: Faker::Number.number)
end

15.times do
  AssembliesPart.create(assembly_id: rand((Assembly.first.id) .. (Assembly.last.id)),part_id: rand((Part.first.id) .. (Part.last.id)))
end
