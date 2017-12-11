const url = 'https://jsonplaceholder.typicode.com/photos';

const PhotoStore = (() => {


    RiotControl.addStore(this);
    riot.observable(this);

    this.on('fetch-photos', (id) => {


    fetch(url + '?albumId=' + id)
    .then((resp) => resp.json())
    .then(function(data) {
      //console.log(data);
      RiotControl.trigger('fetched-photos', data);
        
    })
    .catch(function(error) {
      console.log('Fetch Error :-S', error);
    });
    })

    this.on('fetch-photo', id => {

    })

    /*this.on('*', (payload) => {
        console.log(payload);
    })*/
})();