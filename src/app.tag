<app>
    <div id="contentPages">
        <home-page if={page === 'home-page'} />
    </div>

    <script>
        import 'tags/pages/home-page/home-page.tag'
        import 'lib/stores/albumstore.js'
        import 'lib/stores/poststore.js'
        import 'lib/posts/createpost.js'

        this.page = 'home-page'


        route((tag) => {
            console.log(tag)
        })
    </script>
</app>