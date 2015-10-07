require 'faker'

FactoryGirl.define do
  factory :ticket do
    status
    user
    titulo { Faker::Name.title }
    descricao { Faker::Lorem.sentence }
  end

  factory :user do
    nome 'Rodrigo'
    email { Faker::Internet.email }
  end

  factory :status do
    nome 'Pendente'
  end
end
