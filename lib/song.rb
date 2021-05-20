class Song 
    attr_accessor :name, :artist , :genre

    @@count=0

    @@genres=[]
    @@artists=[]
   
    


    def initialize (name,artist,genre)
        @name=name
        @artist=artist
        @genre=genre
        @@count +=1
       
        @@genres << genre 
        @@artists << artist 
        
    end

    def self.count
        @@count

    end

    def self.genres
        @@genres.uniq

    end

    def self.artists
        @@artists.uniq


    end
    def self.genre_count
        answer={}
       self.genres.each do |k|
        answer[k] =@@genres.select{|g| g == k}.length

       end
       answer
    end

    def self.artist_count
        answer={}
        self.artists.each do |k|
            answer[k] =@@artists.select{|g| g == k}.length
    end
    answer
end
    

end