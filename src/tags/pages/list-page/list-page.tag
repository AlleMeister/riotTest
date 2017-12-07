<list-page>
<div>
    <div id="albumParent">
    <h2>Albums</h2>
    <ul name="albumList" each={album in albums}>Userid: {album.userId} Title: {album.title}</ul>
    </div>

    <div id="postParent">
    <h2>Posts</h2>
    <ul name="postList" each={post in posts}>Userid: {post.userId} Title: {post.title}</ul>
    </div>

    <form-post onsubmit={this.send}></form-post>

    <div>
        
    </div>
</div>


    <script>
    import 'tags/forms/form-post.tag'
    this.albums = [];
    this.posts = [];
    RiotControl.addStore(this);
    
    this.send = (payload) => {
        console.log(payload)
        
    }

  this.on('fetched-albumdata', (data) => {
      this.albums = data;
      this.update();
  });

  this.on('fetched-postdata', (data) => {
      this.posts = data;
      this.update();
  });

  this.on('mount', () => {
      RiotControl.trigger('fetch-albumdata');
      RiotControl.trigger('fetch-postdata'); 
  });
    </script>
</list-page>