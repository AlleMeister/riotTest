<comment-page>

    <div>


        <div id="commentParent">
            <h1>Comment section</h1> 
            <comment-item each={comment in comments} item={comment}></comment-item>            
    </div>

    <script>
    import './commentstyle'
    import 'tags/common/comment-item/comment-item'
        this.comments = [];
        RiotControl.addStore(this);
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
        })


    </script>

</comment-page>