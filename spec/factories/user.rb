FactoryGirl.define do

# FactoryGirl will assume that the parent model of a factory
# named ":user" is "User"
 factory :user do
   email                 'alice@example.com'
   password              'oranges!'
   password_confirmation 'oranges!'
 end

  factory :foreign_user, parent: :user do
   email                 'bob@example.com'
   password              'oranges!'
   password_confirmation 'oranges!'
 end

end
