<comment-page>

    <div>
        <div>
            <posthead-item item={post}></posthead-item>
        </div>
        <h1>Comment section</h1> 
        <comment-item each={comment in comments} item={comment}></comment-item>
        <div id="newcommentsParent" if={newcomments}>
            <div newcomment={newcomments}>
                Id: {newcomments.id} </br> Name: {newcomments.name} </br> Email:{newcomments.email} </br> </br> Body: {newcomments.body}
            </div>
        </div>
        <div id="createCommentDiv">
            <form-comment></form-comment> 
        </div>
    </div>

    <script>
        import './commentstyle'
        import 'tags/common/comment-item/comment-item'
        import 'tags/common/head-item/posthead-item'
        import 'tags/forms/form-comment'
        RiotControl.addStore(this);
        this.comments = [];
        this.post = [];
        this.newcomments = null;
        
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

        this.on('comment-response', (data) => {
            this.newcomments = data;
            this.update();
        });
         

    </script>

</comment-page>