require 'pry'

class Lineup
    attr_reader :arr
    attr_accessor :wallet, :promoter

    @@all = []

    def initialize(arr, promoter)
        @arr = arr
        @wallet = 0
        @promoter = []
        @@all << self
    end

    def promoters
        Promoter.all.select do |promoter_instance|
            promoter_instance.name
        end
    end

    def self.all
        @@all
    end
    
end