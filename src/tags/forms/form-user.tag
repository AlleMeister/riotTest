<form-user>
<div>
 <form onsubmit={ edituser }>
    <h2>Edit user</h2>
    <div>
    <label for="name">Name:</label>
    <input name="name" ref="name" type="text" value={user.name ? user.name : ''}></input>
    </div>
    <div>
    <label for="username">Username:</label>
    <input name="username" ref="username" type="text" value={user.username ? user.username : ''}></input>
    </div>
    <div>
    <label for="email">E-mail:</label>
    <input name="email" ref="email" type="text" value={user.email ? user.email : ''}></input>
    </div>
    <div>
    <label for="street">Street:</label>
    <input name="street" ref="street" type="text" value={user.address ? user.address.street : ''}></input>
    </div>
    <div>
    <label for="suite">Suite:</label>
    <input name="suite" ref="suite" type="text" value={user.address ? user.address.suite : ''}></input>
    </div>
    <div>
    <label for="city">City:</label>
    <input name="city" ref="city" type="text" value={user.address ? user.address.city : ''}></input>
    </div>
    <div>
    <label for="zipcode">Zipcode:</label>
    <input name="zipcode" ref="zipcode" type="text" value={user.address ? user.address.zipcode : ''}></input>
    </div>
    <div>
    <label for="lat">Latitude:</label>
    <input name="lat" ref="lat" type="text" value={user.address ? user.address.geo.lat : ''}></input>
    </div>
    <div>
    <label for="lng">Longitude:</label>
    <input name="lng" ref="lng" type="text" value={user.address ? user.address.geo.lng : ''}></input>
    </div>
    <div>
    <label for="phone">Phone:</label>
    <input name="phone" ref="phone" type="text" value={user.phone ? user.phone : ''}></input>
    </div>
    <div>
    <label for="website">Website:</label>
    <input name="website" ref="website" type="text" value={user.website ? user.website : ''}></input>
    </div>
    <div>
    <label for="cname">Compay Name:</label>
    <input name="cname" ref="cname" type="text" value={user.company ? user.company.name : ''}></input>
    </div>
    <div>
    <label for="catchphrase">Catchphrase:</label>
    <input name="catchphrase" ref="catchphrase" type="text" value={user.company ? user.company.catchPhrase : ''}></input>
    </div>
    <div>
    <label for="bs">Business Slogan:</label>
    <input name="bs" ref="bs" type="text" value={user.company ? user.company.bs : ''}></input>
    </div>
    <button type="submit">Submit</button>
 </form>
</div>

<script>
RiotControl.addStore(this)
import 'tags/forms/form-userstyle'
this.user = {};
    
    this.on('mount', () => {
        RiotControl.trigger('fetch-user');
    });

    this.on('fetched-user', (data) =>{
            //console.log(data);
            this.user= data;
            this.update();
            
        });

this.edituser = (e) => {
        e.preventDefault();

        let obj = {
            nameinput: this.refs.name.value,
            usernameinput: this.refs.username.value,
            emailinput: this.refs.email.value,
            streetinput: this.refs.street.value,
            suiteinput: this.refs.suite.value,
            cityinput: this.refs.city.value,
            zipcodeinput: this.refs.zipcode.value,
            latinput: this.refs.lat.value,
            lnginput: this.refs.lng.value,
            phoneinput: this.refs.phone.value,
            websiteinput: this.refs.website.value,
            companynameinput: this.refs.cname.value,
            catchphraseinput: this.refs.catchphrase.value,
            bsinput: this.refs.bs.value
        }
        RiotControl.trigger('edit-user', obj);
}


</script>
</form-user>