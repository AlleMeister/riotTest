<home-page>
 <div>
    <h1>Welcome {user}</h1>
    
   <input oninput={ send } id="userinput" ref="userinput" type="text"></input>

   <button class="BTN" onclick={ gopremium }>Hide Lists</button>
   <button class="BTN" onClick={goto}>Edit user</button>

    <list-page if={ show }></list-page>

    <div id="newpostParent" if={newposts}>
    <div newpost={ newposts }>
        Title: {newposts.title} </br> Body: {newposts.body}
    </div>
    </div>

    <form-post></form-post>
    
</div>
    <script>
    import route from 'riot-route'
    import 'tags/pages/list-page/list-page'
    import 'tags/forms/form-post'
    import './style'
    RiotControl.addStore(this)
    this.user = '';
    this.show = true;
    this.newposts = null;


        this.send = (e) => {
            let username = this.refs.userinput.value
            this.user = username;
        };

        /*  this.on('update', () => {
            console.log(this)
        });  */

        this.goto = (e) => {
            route('/user/');
        } 
            
        this.gopremium = (e) => {
            this.show = !this.show;
        };

        this.on('post-response', (data) => {
            this.newposts = data;
            this.update();
        });

    </script>

</home-page>