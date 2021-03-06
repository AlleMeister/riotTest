const PostStore = (() => {
    RiotControl.addStore(this);
    riot.observable(this);
    const url = 'https://jsonplaceholder.typicode.com/posts';

    this.on('fetch-postdata', () => {

    fetch(url)
    .then((resp) => resp.json())
    .then(function(data) {
      //console.log(data);
      RiotControl.trigger('fetched-postdata', data);
  
    })
    .catch(function(error) {
      console.log('Fetch Error :-S', error);
    });
    });

    this.on('fetch-clickedpost', (id) => {
      
          fetch(url + '?id=' + id)
          .then((resp) => resp.json())
          .then(function(data) {
            //console.log(data);

            const postData = data.length === 1 ? data[0] : {}
            RiotControl.trigger('fetched-clickedpostdata', postData);
        
          })
          .catch(function(error) {
            console.log('Fetch Error :-S', error);
          });
          });

    /*this.on('*', (payload) => {
        console.log(payload);
    })*/
})();