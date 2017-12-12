<login-page>

<div>
<form onsubmit={validate}>
    <div>
        <h2>Please enter Username and Password</h2>
        <div>
            <label for="un">Username:</label>
            <input name="un" type="text" ref="logusername">
        </div>
        <div>
            <label for="pw">Password:</label>
            <input name="pw" type="password" ref="logpassword">
        </div>
        <button type="submit">Submit</button>
    </div>
</form>
</div>


<script>
import route from 'riot-route'
import './loginstyle'
this.validate = (e) => {
    e.preventDefault();
    if (this.refs.logusername.value === 'admin' && this.refs.logpassword.value === 'password') {
        route('/home/');
    }else {
        alert('login is wrong');
        };

};

</script>

</login-page>