require 'rails_helper'

 describe "User visits the page" do
   scenario "user only sees the headers" do

     visit "/"

      expect(page).to have_content("Hot Reads")
      expect(page).to have_content("Status")
      expect(page).to have_content("URL")
      expect(page).to have_content("Times Read")
    end

   scenario "users sees a single link" do
     link = Link.create(url: "https://www.google.com")

     visit '/'

     expect(page).to have_content("Hot Reads")
     expect(page).to have_content(link.url)
     expect(page).to have_content(link.read_count)
     expect(link.read_count).to eq(1)
   end

   scenario "users sees list of links" do
     link_1 = Link.create(url: "https://www.google1.com")
     link_2 = Link.create(url: "http://github.com")
     link_3 = Link.create(url: "https://turing.io")

     visit '/'

     expect(page).to have_content("Hot Reads")
     expect(page).to have_content(link_1.url)
     expect(page).to have_content(link_2.url)
     expect(page).to have_content(link_3.url)
     expect(page).to have_content(link_1.read_count)
     expect(page).to have_content(link_2.read_count)
     expect(page).to have_content(link_3.read_count)

   end
  end
