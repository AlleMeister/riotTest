<form-comment>
<div>
 <form onsubmit={ addcomment }>
 <div>
    <h2>Share your thoughts</h2>
    <div>
        <label for="name">Title:</label>
        <input name="name" ref="name" type="text">
    </div>
    <div>
        <label for="email">E-mail:</label>
        <input name="email" type="email" ref="email">
    </div>
    <div>
        <label for="body">Body:</label>
        <input name="body" ref="body" type="text">
    </div>
    <button type="submit">Submit</button>
</div>
 </form>


</div>

<script>
    this.addcomment = (e) => {
        e.preventDefault();

        let obj = {
            nameinput: this.refs.name.value,
            emailinput: this.refs.email.value,
            bodyinput: this.refs.body.value
        }
        console.log(obj);
        RiotControl.trigger('create-comment', obj);
    };

</script>

</form-comment>