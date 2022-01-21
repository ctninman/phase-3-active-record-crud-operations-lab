class Movie < ActiveRecord::Base

#CREATE
  def self.create_with_title(title)
    Movie.create(title: title)
  end

#READ
  def self.first_movie
    Movie.first
  end

  def self.last_movie
    Movie.last
  end

  def self.movie_count
    Movie.all.length
  end

  def self.find_movie_with_id(id)
    Movie.find(id)
  end

  def self.find_movie_with_attributes(attribute)
    Movie.find_by(attribute)
  end

  def self.find_movies_after_2002
    Movie.where('release_date > ?', 2002)
  end

#UPDATE
  def update_with_attributes(attribute)
    self.update(attribute)
  end

  def self.update_all_titles(title)
    Movie.update(title: title)
  end

#DELETE
  def self.delete_by_id(id)
    Movie.delete(id)
  end

  def self.delete_all_movies
    Movie.destroy_all
  end

  # Update
  # Movie#update_with_attributes: updates a single movie using the #update method
  # Movie.update_all_titles: updates the title of all records at once using the .update method
  # Delete
  # Movie.delete_by_id: deletes a single item with the #destroy method
  # Movie.delete_all_movies: deletes all items at once with the .destroy_all method

end