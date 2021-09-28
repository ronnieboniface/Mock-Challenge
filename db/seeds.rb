puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

Freebie.create(item_name: 'Trap Queen', value: 342 , dev_id: 4, company_id: 2)
Freebie.create(item_name: 'Car', value: 259, dev_id: 1, company_id: 1)
Freebie.create(item_name: 'Good Magicians', value: 428, dev_id: 2, company_id: 2)
Freebie.create(item_name: 'The Recluse', value: 303, dev_id: 3, company_id: 3)
Freebie.create(item_name: 'Body Language', value: 339, dev_id: 4, company_id: 4)
Freebie.create(item_name: 'Cruel Reminder', value: 241, dev_id: 1, company_id: 4)
Freebie.create(item_name: 'Brass Beam', value: 242, dev_id: 2, company_id: 3)
Freebie.create(item_name: 'Your Boyfriend', value: 214, dev_id: 3, company_id: 2)
Freebie.create(item_name: 'Long Island', value: 236, dev_id: 4, company_id: 4)
Freebie.create(item_name: 'Fast Car', value: 450, dev_id: 4, company_id: 1)

puts "Seeding done!"
