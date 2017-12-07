


const AlbumStore = (() => {
    RiotControl.addStore(this);
    riot.observable(this);

    this.on('fetch-albumdata', () => {


    fetch('https://jsonplaceholder.typicode.com/albums')
    .then((resp) => resp.json())
    .then(function(data) {
      console.log(data);
      RiotControl.trigger('fetched-albumdata', data);
        
    })
    .catch(function(error) {
      console.log('Fetch Error :-S', error);
    });
    })

    /*this.on('*', (payload) => {
        console.log(payload);
    })*/
})();


//const fetchAlbum = () => {
 // return new Promise((resolve, reject) => {
    
 // })
//}