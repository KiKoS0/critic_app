require 'open-uri'

class Prof < ApplicationRecord
    validates(:name, presence: true, length: { maximum: 50 })
    has_many :reviews, dependent: :destroy
    
    def self.populate
        if Prof.count ==0
            link = "http://www.issatso.rnu.tn/fo/emplois/emploi_enseignant.php"
            doc = Nokogiri::HTML(open(link))
            profs = doc.css(".styliste").children.map {|name| name.text}.compact
            profs.each do | prof |
                Prof.new(name: prof).save
            end
        end
    end
end
