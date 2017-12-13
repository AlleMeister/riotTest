const url = 'https://jsonplaceholder.typicode.com/comments';

const CommentStore = (() => {
    RiotControl.addStore(this);
    riot.observable(this);

    this.on('fetch-comments', (id) => {


    fetch(url + '?postId=' + id)
    .then((resp) => resp.json())
    .then(function(data) {
      //console.log(data);
      RiotControl.trigger('fetched-comments', data);
        
    })
    .catch(function(error) {
      console.log('Fetch Error :-S', error);
    });
    })

})();

