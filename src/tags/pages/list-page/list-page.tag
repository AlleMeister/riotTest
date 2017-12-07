<list-page>
<div>
    <div style="background-color:red" id="albumParent">
    <h2>Albums</h2>
    <ul name="albumList" each={album in albums}>Userid: {album.userId} Title: {album.title}</ul>
    </div>

    <div style="background-color:blue" id="postParent">
    <h2>Posts</h2>
    <ul name="postList" each={post in posts}>Userid: {post.userId} Title: {post.title}</ul>
    </div>

    <form-post onsubmit={this.send}></form-post>

    <div style="background-color:yellow">
    <h2>New Posts</h2>
    <span {newposts}>Userid: {newposts.userId} Id: {newposts.id} Title: {newposts.title} Body: {newposts.body}</span>
    </div>
</div>


    <script>
    import 'tags/forms/form-post.tag'
    this.albums = [];
    this.posts = [];
    this.newposts = [];
    RiotControl.addStore(this);


    //import {fetchAlbum} from 'lib/'
    
   // this.send = (payload) => {
       // console.log(payload);
        //let formdata = payload;
        //RiotControl.trigger('create-post', formdata);
   // }

  this.on('fetched-albumdata', (data) => {
      this.albums = data;
      this.update();
  });

  this.on('fetched-postdata', (data) => {
      this.posts = data;
      this.update();
  });

  this.on('post-response', (data) => {
      this.newposts = data;
      this.update();
  });


  this.on('mount', () => {
     // RiotControl.trigger('fetch-albumdata');
      //RiotControl.trigger('fetch-postdata'); 

      //fetchAlbum()
        //.then(res => {
            //this.album = res;
        //})
  });
    </script>
</list-page>