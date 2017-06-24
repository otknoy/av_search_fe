<app>
  <header>
    <h1><a href="/">av_search</a></h1>

    <form onsubmit="{ submit }">
      <input type="text" name="keyword" placeholder="" value="{ keyword }">
      <input type="submit" name="submit" value="search">
    </form>
  </header>

  <search-result items={ items }></search-result>

  <footer>
    <dmm-credit></dmm-credit>
  </footer>

  <script>
   const keyword = opts.keyword;
   this.keyword = keyword;

   // search
   const url = `http://192.168.1.50:8080/search?keyword=${keyword}`;
   fetch(url)
     .then(response => {
       return response.json()
     })
     .then(response => {
       console.log(response.items);

       this.items = response.items;
       this.update();
     });
  </script>
</app>
