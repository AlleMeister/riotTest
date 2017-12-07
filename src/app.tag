<app>
    <div id="contentPages">
        <router>
            <route path="/"><home-page /></route>
            <route path="home"><home-page /></route>
            <route path="comment"><comment-page /></route>
        </router>
    </div>

    <script>
        import 'tags/pages/home-page/home-page.tag'
        import 'lib/stores/albumstore.js'
        import 'lib/stores/poststore.js'
        import 'lib/posts/createpost.js'
        import route from 'riot-route/lib/tag'


    </script>
</app>