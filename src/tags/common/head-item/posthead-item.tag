<posthead-item>
<div class="headSect">
    <div >
        Id: {item.id} <br/> Title: {item.title} <br/> <br/> Body: {item.body}
    </div>

</div>

<script>
import 'basecss/headstyle'
    this.item = this.opts.item;

    this.on('update', () => {
        this.item = this.opts.item;
    });
</script>

</posthead-item>