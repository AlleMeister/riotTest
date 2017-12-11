<albumhead-item>
<div class="headSect">
    <div>
        Id: {item.id} <br/> Name: {item.name} <br/> Username: {item.username} <br/> E-mail: {item.email}
    </div>

</div>

<script>
import 'basecss/headstyle'
    this.item = this.opts.item;


    this.on('update', () => {
        this.item = this.opts.item;
    });
</script>

</albumhead-item>