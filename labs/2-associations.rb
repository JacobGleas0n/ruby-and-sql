# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-associations.rb

# 1. write code to display each contact (you can reuse the previous lab's code) and include the contact's company name, e.g.:


#puts "Contacts: #{Contact.all.count}"
#all_contacts = Contact.all
#for contact in all_contacts
#    puts "#{contact.first_name} #{contact.last_name} - #{contact.email} - #{contact.company.name}"
#end  

# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com - Amazon.com, Inc.
# Craig Federighi - craig@apple.com - Apple Inc.
# Elon Musk - elon@tesla.com - Tesla, Inc.
# Tim Cook - tim@apple.com - Apple Inc.

# 2. similar to above, but this time organized by company, write code to display each company (name) and its contacts, e.g.:

for company in Company.all
    puts company.name
    for contact in company.contacts
        puts "#{contact.first_name} #{contact.last_name} - #{contact.email}"
    end 
end

#This is the long way below that doesn't do a double for loop, originally done in class 
#apple = Company.where({name:"Apple, Inc."})[0]

#puts "#{apple.name}"
#for contact in apple.contacts
#    puts "#{contact.first_name} #{contact.last_name} - #{contact.email} - #{contact.company.name}"
#end  


#amazon = Company.where({name:"Amazon.com, Inc."})[0]

#puts "#{amazon.name}"
#for contact in amazon.contacts
#    puts "#{contact.first_name} #{contact.last_name} - #{contact.email} - #{contact.company.name}"
#end  


#tesla = Company.where({name:"Tesla,Inc."})[0]

#puts "#{tesla.name}"
#for contact in tesla.contacts    
#    puts "#{contact.first_name} #{contact.last_name} - #{contact.email} - #{contact.company.name}"
#end  

# ---------------------------------
# Apple Inc.
# Tim Cook - tim@apple.com
# Craig Federighi - craig@apple.com
#
# Amazon.com, Inc.
# Andy Jassy - andy@amazon.com
#
# Tesla, Inc.
# Elon Musk - elon@tesla.com
