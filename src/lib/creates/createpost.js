const CreatePost = (() => {

    RiotControl.addStore(this);
    riot.observable(this);

const url = 'https://jsonplaceholder.typicode.com/posts';


this.on('create-post', (formdata) => {

let obj = {
  userId: 1,
  id: '',
  title: formdata.titleinput,
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
RiotControl.trigger('post-response', data);

})
.catch(function(error) {
console.log('Fetch Error :-S', error);
});

});

})();