class Movie < ActiveRecord::Base

    def self.create_with_title(title)
        Movie.create(title: title)
    end

    #first movie on list
    def self.first_movie
        Movie.first
    end

    #last movie on list
    def self.last_movie
        Movie.last
    end

    #length of Movie list
    def self.movie_count
        Movie.count
    end

    #find a movie based on its ID
    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    #find movie with searachable attribute
    def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
    end

    #find movie with release date > 2002
    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end


    #update stuff

    #update w/attribute. needs self. because it's an instance method.
    def update_with_attributes(attributes)
        self.update(attributes)
    end

    #update all titles
    def self.update_all_titles(title)
        Movie.update(title: title)
    end


    ##DESTROY -- Delete
    #delete by id
    def self.delete_by_id(id)
        deletingmovie = Movie.find(id)
        deletingmovie.destroy
    end

    #delete the whole table
    def self.delete_all_movies
        Movie.destroy_all
    end

end