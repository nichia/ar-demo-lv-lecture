class Song < ApplicationRecord
  # CRUD
  # If the table has a name column, it generates name, and name=
  # Save the item
  belongs_to :artist
end
