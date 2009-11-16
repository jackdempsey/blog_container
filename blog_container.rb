require 'pancake'
# If you symlink in blog inside mounts you don't want to require here. 
# If you're trying to load the gem, then require 'blog' below
require 'blog'

class BlogContainer < Pancake::Stacks::Short
  add_root(__FILE__)
  initialize_stack

  BlogContainer.router do |r|
    r.mount(JacksBlog, "/jack")
    r.mount(DansBlog,  "/dan")
  end
 
  get "/" do
    "You're here!"
  end
end
