class Board

	attr_reader :rows, :cols

	def initialize(rows, cols)
		@rows = rows
		@cols= cols
		@tiles = []
	end

end