<list-page>
    <div class="content">
        <div id="albumParent">
        <h1>Albums</h1>
        <ul name="albumList" onclick={onClickAlbum} each={album in albums}>Album title: {album.title}</ul>
        </div>

        <div id="postParent">
        <h1>Posts</h1>
        <ul name="postList" onClick={onClickPost} each={post in posts}>Post title: {post.title}</ul>
        </div>
    </div>

    <script>
        import route from 'riot-route'
        this.albums = [];
        this.posts = [];
        RiotControl.addStore(this);


        //import {fetchAlbum} from 'lib/'

        this.onClickAlbum = (e) => {
            const {album} = e.item;
            //console.log(album);

            route('/album/' + album.id + '/')
        };
        this.onClickPost = (e) => {
            const {post} = e.item;
            //console.log(post);

            route('/comment/' + post.id)
        };
        
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

        //fetchAlbum()
            //.then(res => {
                //this.album = res;
            //})
        });

    </script>
</list-page>