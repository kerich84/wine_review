class Wine < ActiveRecord::Base
	VARIETALS = ['Chardonnay', 'Merlot', 'Pinot Noir',
				 'Riesling', 'Sauvignon Blanc', 'Viognier', 'Zinfandel']

	validates :name, :year, :winery, :country, :varietal, presence: true
	validates :year, numericality: { only_integer: true },
   		unless: "year.blank?"
	validates :varietal, inclusion: { in: VARIETALS, message: "Not a valid varietal!" },
    	unless: "varietal.blank?"

    has_many :logentries, dependent: :destroy
end
