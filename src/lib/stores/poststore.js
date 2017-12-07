const PostStore = (() => {
    RiotControl.addStore(this);
    riot.observable(this);

    this.on('fetch-postdata', () => {

    fetch('https://jsonplaceholder.typicode.com/posts')
    .then((resp) => resp.json())
    .then(function(data) {
      console.log(data);
      RiotControl.trigger('fetched-postdata', data);
  
    })
    .catch(function(error) {
      console.log('Fetch Error :-S', error);
    });
    });

    /*this.on('*', (payload) => {
        console.log(payload);
    })*/
})();