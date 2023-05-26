class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :list, uniqueness: { scope: :movie }
  # validates :name, uniqueness: { scope: :year,
  #   message: "should happen once per year" }

  # ** migration cancelled and cannot interpret reason **
  # rails g model bookmark_list movie:references << for terminal command create with foreign key ready

end
