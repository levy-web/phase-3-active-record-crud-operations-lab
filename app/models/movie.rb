class Movie < ActiveRecord::Base

    def self.create_with_title(title)
        create(title: "#{title}")
    end

    def self.first_movie
        all.first
    end

    def self.last_movie
        all.last
    end

    def self.movie_count
        all.count
    end

    def self.find_movie_with_id(id)
        find(id)
    end

    def self.find_movie_with_attributes(attributes)
        self.find_by(attributes)
    end

    def self.find_movies_after_2002
        all.filter do |movie|
            if movie.release_date > 2002
                movie
            end
        end
    end

    def update_with_attributes(attributes)
        update(attributes)
    end

    def self.update_all_titles(title)
            all.update(title: "#{title}")
    end

    def self.delete_by_id(id)
        destroy(id)
    end

    def self.delete_all_movies
        delete_all
    end




    

end