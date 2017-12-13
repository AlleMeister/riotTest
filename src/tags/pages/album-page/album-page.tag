<album-page>
<div>
    <div>
        <albumhead-item  item={useralbum}></albumhead-item>
    </div>
    <div class="imgDiv">
    <img each={ photo in photos } src={photo.thumbnailUrl} alt={photo.url}>
    </div>
</div>

<script>
    import 'tags/common/head-item/albumhead-item'
    import './albumstyle'
    RiotControl.addStore(this);
    this.photos = [];
    this.id = null;
    this.useralbum = {};

    this.on('route', id => 
    {
        //console.log(id)
        this.id = id
    });

    this.on('fetched-photos', (data) => {
        this.photos = data;
        this.update();
    });

    this.on('mount', () => {
        RiotControl.trigger('fetch-photos', this.id);
        RiotControl.trigger('fetchspecific-albumdata', this.id)
    });

    this.on('fetchedspecific-albumdata', (data) => {
        //console.log(data);
        const userId = data.userId
        RiotControl.trigger('fetchalbum-user', userId)
    })

   this.on('fetchedalbum-user', (data) => {
        //console.log(data);
        this.useralbum = data;
        this.update();
        });

</script>
</album-page>