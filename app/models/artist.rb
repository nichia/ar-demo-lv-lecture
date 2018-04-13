class Artist < ApplicationRecord
  has_many :songs

  # Life Cycle event : ActiveRecord Life Cycle event
  # When an object is born: def initialize
  #

  #after_initialize do |artist|
  #  puts "You just made an artist #{artist}"
  #end

  #def self.new_with_message
  #  artist = self.new
  #  puts "You just made an artist #{artist}"
  #  artist
  #end

  validates :name, :presence => true
  validates :name, :length => {:minimum => 5}
  # When you try to save an object
  # it calls valid? eg. a.valid?
  # a.errors.any? a.errors.full_messages  a.errors.full_messages.to_sentence

  validate :good_song
  after_create :email_people
  after_save :notify_people

  def good_song
    if self.name != "Taylor Swift"
      errors.add(:good_song, "must be made by Taylor")
    end
  end

  def email_people
    puts "I've emailed someone"
  end

  def notify_people
    puts "I've saved a record"
  end

end
