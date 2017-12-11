const UserStore = (() => {
    RiotControl.addStore(this);
    riot.observable(this);
    const url = 'https://jsonplaceholder.typicode.com/users';

    this.on('fetchalbum-user', (userId) => {

    fetch(url + '/' + userId)
    .then((resp) => resp.json())
    .then(function(data) {
      //console.log(data);
      RiotControl.trigger('fetchedalbum-user', data);
  
    })
    .catch(function(error) {
      console.log('Fetch Error :-S', error);
    });
    });

    this.on('fetch-user', () => {
  
          fetch(url + '/' + 1)
          .then((resp) => resp.json())
          .then(function(data) {
            //console.log(data);
            RiotControl.trigger('fetched-user', data);
        
          })
          .catch(function(error) {
            console.log('Fetch Error :-S', error);
          });
          });

})();