<home-page>
<div>
    <h1>Welcome {user}</h1>
    
   <input oninput={ send } id="userinput" ref="userinput" type="text"></input>

    <button onclick={ send }>
        Name
    </button>

    <button onclick={ getlist }>
        Get list
    </button>

    <list-page></list-page>

</div>

    <script>
        import 'tags/pages/list-page/list-page.tag'
        import './style.scss'
        RiotControl.addStore(this)
        this.user = ''

        this.send = (e) => {
            let username = this.refs.userinput.value
            this.user = username;
        };

        this.on('update', () => {
            console.log(this)
        });
            
    </script>

</home-page>