require 'colorize'
class Blog

	def initialize
		@posts = []
	end

	def publish_front_page
		 
		 @posts.each do |post|
		 	if !post.sponsored 
			 puts post.title
			 puts "****************"
			 puts post.body
			 puts "----------------\n\n"
			else
			 puts "***** #{post.title} *******  "
			 puts "****************"
			 puts post.body
			 puts "----------------\n\n"
			end
		end

	end	
	def iter(list)
		list.each do |post|
			if !post.sponsored 
			 puts post.title
			 puts "****************"
			 puts post.body
			 puts "----------------\n\n"
			else
			 puts "***** #{post.title} *******  "
			 puts "****************"
			 puts post.body
			 puts "----------------\n\n"
			end
		end
	end
	def paginator
		start_post = 0

		iter(@posts.slice(start_post,3))
		puts " 1 ".colorize(:red) + "2"  + " 3"
		puts " choose next, prev or any word to exit"
    	choice = gets.chomp

    	while choice == "next" || choice == "prev" do
			if choice == "next"
			  start_post += 3
			elsif choice == "prev"
				start_post -= 3
			else
				puts "not valid value!"
			end
			iter(@posts.slice(start_post,3))

			if start_post == 0
				puts " 1 ".colorize(:red)+ "2 "+ " 3"
			elsif start_post == 3
				puts " 1 " +"2 ".colorize(:red)  + "3"
			else
				puts "1 " + "2 " + "3 ".colorize(:red)
			end
				
			puts " choose next, prev or any word to exit"
			choice = gets.chomp
		end	
	end



	def add_post(post)
		@posts.push(post)
	end
end

class Post
	attr_accessor :title
	attr_accessor :body
	attr_accessor :sponsored
	def initialize(title, body, date, sponsored) 
		@title = title
		@body  = body
		@date = date
		@sponsored = sponsored
	end

end

post1 = Post.new("title 1" , "dfajlkdjflkajdfadflkjalkdfjakldjflakdjflka", "23-2-2016", false)
post2 = Post.new("title 2" , "dfajldskjfakldjflkadjflkadjflkajdflkajdflkafj", "25-3-2016", true)
post3 = Post.new("title 3"  ,"lekekrakldfjkladjfklajdfkjadslkfjadlkffkadjflka", "2-2-1997", false)
post4 = Post.new("title 4"  ,"lekekrakldfjkladjfklajdfkjadslkfjadlkffkadjflka", "2-2-1999", false)
post5 = Post.new("title 5"  ,"lekekrakldfjkladjfklajdfkjadslkfjadlkffkadjflka", "2-2-1997", false)
post6 = Post.new("title 6" , "dfjalkdjfladjflkadfj", "1-2-1991", false)
post7 = Post.new("title 7", "dfakldjflkajdflkadjflkjad", "32-45-1979", false)
post8 = Post.new("title 8", "kfakjdhfkjadhfkjad","2-4-1977", false)
blog = Blog.new 
blog.add_post(post1)
blog.add_post(post2)
blog.add_post(post3)
blog.add_post(post4)
blog.add_post(post5)
blog.add_post(post6)
blog.add_post(post7)
blog.add_post(post8)
#blog.publish_front_page

blog.paginator



