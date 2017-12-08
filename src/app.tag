<app>
    <div id="contentPages">
        <router>
            <route path="/"><home-page /></route>
            <route path="home"><home-page /></route>
            <route path="comment/*"><comment-page /></route>
            <route path="album/*"><album-page /></route>
        </router>
    </div>

    <script>
        import 'tags/pages/home-page/home-page'
        import 'tags/pages/comment-page/comment-page'
        import 'tags/pages/album-page/album-page'
        import 'lib/stores/albumstore'
        import 'lib/stores/poststore'
        import 'lib/posts/createpost'
        import 'lib/stores/commentstore'
        import route from 'riot-route/lib/tag'
        import './mainstyle'


    </script>
</app>