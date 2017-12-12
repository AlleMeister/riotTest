const CreateComment = (() => {
    
        RiotControl.addStore(this);
        riot.observable(this);
    
    const url = 'https://jsonplaceholder.typicode.com/comments';
    
    
    this.on('create-comment', (formdata) => {
    
    let obj = {
        name: formdata.nameinput,
        email: formdata.emailinput,
        body: formdata.bodyinput
      }
    
    fetch(url, {
    method: 'POST',
    body: JSON.stringify(obj),
    headers: {
      "Content-type": "application/json; charset=UTF-8"
    }
    })
    .then((resp) => resp.json())
    .then(function(data) {
    console.log(data);
    RiotControl.trigger('comment-response', data);
    
    })
    .catch(function(error) {
    console.log('Fetch Error :-S', error);
    });
    
    });
    
    })();