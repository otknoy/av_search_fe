<app>
  <header>
    <h1><a href="/">av_search</a></h1>

    <form onsubmit="{ submit }">
      <input type="text" name="keyword" placeholder="" value="{ keyword }">
      <input type="submit" name="submit" value="search">
    </form>
  </header>

  <search-result items={ items }></search-result>

  <div>
    <p each="{ k in keywords }">
      <a href="/?keyword={ k }">{ k }</a>
    </p>
  </div>

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
       this.keywords = keywords(response)
       this.update();
     });

   function keywords(response) {
     let keywords = [];
     response.items.forEach((item) => {
       item.genre.forEach((genre) => {
	 keywords.push(genre);
       });
     });

     // uniq
     keywords = keywords.filter((e, i, self) => self.indexOf(e) === i);

     return keywords;
   }
  </script>
</app>
