<comment-page>

    <div>
        <div>
            <posthead-item item={post}></posthead-item>
        </div>
        <div id="commentParent">
            <h1>Comment section</h1> 
            <comment-item each={comment in comments} item={comment}></comment-item>
        <div>            
    </div>

    <script>
        import './commentstyle'
        import 'tags/common/comment-item/comment-item'
        import 'tags/common/head-item/posthead-item'
        RiotControl.addStore(this);
        this.comments = [];
        this.post = [];
        
        this.id = null;

        this.on('route', id => {
            console.log(id);
            this.id = id;
            
        });

        this.on('fetched-comments', (data) => {
            this.comments = data;
            this.update();
        });

        this.on('mount', () => {
        RiotControl.trigger('fetch-comments', this.id);
        RiotControl.trigger('fetch-clickedpost', this.id);
        });

        this.on('fetched-clickedpostdata', (data) => {
            console.log(data);
            this.post = data;
            this.update();
        });
         

    </script>

</comment-page>