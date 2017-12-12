const EditUser = (() => {
    
        RiotControl.addStore(this);
        riot.observable(this);
    
    const url = 'https://jsonplaceholder.typicode.com/users/1';
    
    
    this.on('edit-user', (formdata) => {
    
    let obj = {
        id: 1,
        "name": formdata.nameinput,
        "username": formdata.usernameinput,
        "email": formdata.emailinput,
        "address": {
            "street": formdata.streetinput,
            "suite": formdata.suiteinput,
            "city": formdata.cityinput,
            "zipcode": formdata.zipcodeinput,
            "geo": {
            "lat": formdata.latinput,
            "lng": formdata.lnginput
            }
        },
        "phone": formdata.phoneinput,
        "website": formdata.websiteinput,
        "company": {
            "name": formdata.companynameinput,
            "catchPhrase": formdata.catchphrseinput,
            "bs": formdata.bsinput
            }
    }
    
    fetch(url, {
    method: 'PATCH',
    body: JSON.stringify(obj),
    headers: {
      "Content-type": "application/json; charset=UTF-8"
    }
    })
    .then((resp) => resp.json())
    .then(function(data) {
    console.log(data);
    alert('User update success!')
    RiotControl.trigger('post-response', data);
    
    })
    .catch(function(error) {
    console.log('Fetch Error :-S', error);
    });
    
    });
    
    })();