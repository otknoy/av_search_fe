<item>
  <p><a href="{ url }">{ title }</a></p>
  <img src="{ imageUrl }"></img>

  <script>
   console.log(opts);

   this.title = opts.data.title;
   this.url = opts.data.url;
   this.imageUrl = opts.data.imageUrl;
  </script>
  <style>
    :scope {
      display: block; color: #f04
    }

   img {
     width: 100%;
     height: auto;
   }

  </style>
</item>
