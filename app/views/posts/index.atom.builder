# app/views/posts/index.atom.builder
atom_feed do |feed|
  feed.title "Coding Log Book"
  feed.updated @posts.first.updated_at

  @posts.each do |post|
    feed.entry(post) do |entry|
      entry.title post.title
      entry.content post.body, type: 'html'

      entry.author do |author|
        author.name 'Steve'
      end
    end
  end
end
