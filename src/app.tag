<app>
    <div id="contentPages">
        <router>
            <route path="/"><login-page /></route>
            <route path="home"><home-page /></route>
            <route path="comment/*"><comment-page /></route>
            <route path="album/*"><album-page /></route>
            <route path="user"><user-page /></route>
            <!--  <route show={!hasAuth} path="/*"><login-page /></route>  -->
        </router>
    </div>

    <script>
        import 'tags/pages/home-page/home-page'
        import 'tags/pages/comment-page/comment-page'
        import 'tags/pages/album-page/album-page'
        import 'tags/pages/user-page/user-page'
        import 'tags/pages/login-page/login-page'
        import 'lib/stores/albumstore'
        import 'lib/stores/poststore'
        import 'lib/stores/commentstore'
        import 'lib/stores/photostore'
        import 'lib/stores/userstore'
        import 'lib/creates/createpost'
        import 'lib/creates/createcomment'
        import 'lib/creates/edituser'
        import route from 'riot-route/lib/tag'
        import './mainstyle'

        
    /*this.on('route', () => {
      console.log('now loading...')
    });*/

    /*    this.updateAuth = () => {
            const authStorage = localStorage.getItem('hasAuth');
            this.hide = authStorage !== null && authStorage === "true" ? true : false;
        };

        this.on('mount', () => {
            this.updateAuth();
        });

        this.on('update', () => {
          
        });  
*/
     /*   this.on('hasAuth', () =>{
            const storage = localStorage.getItem('Authing');
            console.log(storage);
           this.hide = storage !== null && storage === "true" ? true : false;
        }); */

    </script>
</app>