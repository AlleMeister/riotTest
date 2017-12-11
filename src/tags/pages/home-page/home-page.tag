<home-page>
 <div>
    <h1>Welcome {user}</h1>
    
   <input oninput={ send } id="userinput" ref="userinput" type="text"></input>

   <button class="hideBTN" onclick={ gopremium }>Hide Lists</button>

    <list-page if={ show }></list-page>

    <div id="newpostParent">
        <span newpost={ newposts }>Userid: {newposts.userId} Title: {newposts.title} Body: {newposts.body}</span>
    </div>

    <form-post ></form-post>
    
</div>
    <script>
        import 'tags/pages/list-page/list-page'
        import 'tags/forms/form-post'
        import './style'
        RiotControl.addStore(this)
        this.user = '';
        this.show = true;
        this.newposts = [];


        this.send = (e) => {
            let username = this.refs.userinput.value
            this.user = username;
        };

        this.on('update', () => {
            console.log(this)
        });
            
        this.gopremium = (e) => {
            this.show = !this.show;
        };

        this.on('post-response', (data) => {
            this.newposts = data;
            this.update();
        });

    </script>

</home-page>