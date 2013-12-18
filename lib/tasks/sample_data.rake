namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = Membre.create!(
                         email: "marcelle.monrose@free.fr",
                         password: "marcelle",
                         password_confirmation: "marcelle",
                         admin: true)
    
  end
end
