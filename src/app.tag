<app>
    <div id="contentPages">
        <router>
            <route path="/"><login-page /></route>
            <route path="home"><home-page /></route>
            <route path="comment/*"><comment-page /></route>
            <route path="album/*"><album-page /></route>
            <route path="user"><user-page /></route>
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


    </script>
</app>