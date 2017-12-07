<form-post>
<div>
 <form onsubmit={ addpost }>
    <input ref="title" type="text"></input>
    <input ref="body" type="text"></input>
    <input type="submit" value="submit"></input>
 </form>


</div>

<script>

    this.addpost = (e) => {
        e.preventDefault();
        //console.log('ad')
        //let titleinput = this.refs.title.value;
        //let bodyinput = this.refs.body.value;

        let obj = {
            titleinput: this.refs.title.value,
            bodyinput: this.refs.body.value
        }
        this.opts.onsubmit(obj)
    };

</script>

</form-post>