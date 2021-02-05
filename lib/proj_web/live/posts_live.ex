defmodule ProjWeb.PostsLive do
  use ProjWeb, :live_view  
  alias Proj.Posts
  alias Proj.Posts.Post
  def mount(_params, _session, socket) do
    posts=  Posts.list_posts()
   
    {:ok, assign(socket, posts: posts, selected_post: hd(posts))}
  end
  
  def handle_params(%{"id" => id}, _url, socket) do
    id = String.to_integer(id)    
    selected_post = Posts.get_post!(id)
    IO.inspect("-----------------------------")
    IO.inspect(selected_post)
    {:noreply, assign(socket, selected_post: selected_post, page_title: selected_post.title)}
  end
  def handle_params(_, _, socket) do
    {:noreply, socket}
  end

  
end
