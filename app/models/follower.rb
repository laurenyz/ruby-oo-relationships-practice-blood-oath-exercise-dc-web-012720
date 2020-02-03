class Follower
    attr_reader :name, :age, :life_motto
    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all
        @@all
    end

    def bloodoaths
        BloodOath.all.select do |bo_obj|
            bo_obj.follower == self
        end
    end

    def cults
        self.bloodoaths.map do |bo_obj|
            bo_obj.cult
        end
    end

    def join_cult(cult_obj)
        BloodOath.new(cult_obj, self, Time.now.to_s)
    end

    def self.of_a_certain_age(min_age)
        self.all.select do |follower_obj|
            follower_obj.age >= min_age
        end
    end

end

