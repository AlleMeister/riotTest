<form-post>
<div>
 <form onsubmit={ addpost }>
 <div>
    <h2>Create post</h2>
    <div>
    <label for="title">Title:</label>
    <input name="title" ref="title" type="text"></input>
    </div>
    <div>
    <label for="body">Body:</label>
    <input name="body" ref="body" type="text"></input>
    </div>
    <button type="submit">Submit</button>
</div>
 </form>


</div>

<script>
import './form-poststyle' 
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