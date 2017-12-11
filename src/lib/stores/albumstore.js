


const AlbumStore = (() => {
    RiotControl.addStore(this);
    riot.observable(this);
    const url = 'https://jsonplaceholder.typicode.com/albums';

    this.on('fetch-albumdata', () => {


    fetch(url)
    .then((resp) => resp.json())
    .then(function(data) {
      //console.log(data);
      RiotControl.trigger('fetched-albumdata', data);
        
    })
    .catch(function(error) {
      console.log('Fetch Error :-S', error);
    });
    });

    this.on('fetchspecific-albumdata', (id) => {
      
      
          fetch(url + '/' + id)
          .then((resp) => resp.json())
          .then(function(data) {
            //console.log(data);
            RiotControl.trigger('fetchedspecific-albumdata', data);
              
          })
          .catch(function(error) {
            console.log('Fetch Error :-S', error);
          });
          });

    /*this.on('*', (payload) => {
        console.log(payload);
    })*/
})();


//const fetchAlbum = () => {
 // return new Promise((resolve, reject) => {
    
 // })
//}