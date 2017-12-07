<form-post>
<div>
 <form style="background-color:green" onsubmit={ addpost }>
    <label for="title">Title:</label>
    <input name="titel" ref="title" type="text"></input>
    <label for="body">Body:</label>
    <input name="body" ref="body" type="text"></input>
    <input type="submit" value="submit"></input>
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