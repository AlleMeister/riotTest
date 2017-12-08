<form-post>
<div>
 <form onsubmit={ addpost }>
    <h2>Create post</h2>
    <div>
    <label for="title">Title:</label>
    <input name="titel" ref="title" type="text"></input>
    </div>
    <div>
    <label for="body">Body:</label>
    <input name="body" ref="body" type="text"></input>
    </div>
    <button type="submit">Submit</button>
 </form>


</div>

<script>

    this.addpost = (e) => {
        e.preventDefault();
        //console.log()
        //let titleinput = this.refs.title.value;
        //let bodyinput = this.refs.body.value;

        let obj = {
            titleinput: this.refs.title.value,
            bodyinput: this.refs.body.value
        }
        //this.opts.onsubmit(obj)
        console.log(obj);
        RiotControl.trigger('create-post', obj);
    };

</script>

</form-post>