<home-page>
<div>
    <h1>Welcome {user}</h1>
    
   <input oninput={ send } id="userinput" ref="userinput" type="text"></input>

   <button onclick={ gopremium }>Everything is gone</button>

    <list-page if={ show }></list-page>
    
</div>

    <script>
        import 'tags/pages/list-page/list-page.tag'
        import './style.scss'
        RiotControl.addStore(this)
        this.user = '';
        this.show = true;


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

    </script>

</home-page>