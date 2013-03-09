module ApplicationHelper
	# Return a title for each page
	def title
		base_title = "ROR sample"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end

	def logo
		image_tag("logo.png", :alt => "ROR sample", :class => "round")
	end
end
