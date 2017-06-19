<app>
  <header>
    <form>
      <input type="search" name="search" placeholder="">
      <input type="submit" name="submit" value="Search">
    </form>
  </header>

  <div>
    <item each="{ items }" data="{ this }"></item>
  </div>

  <footer>
    <a href="https://affiliate.dmm.com/api/"><img src="http://pics.dmm.com/af/web_service/r18_135_17.gif" width="135" height="17" alt="WEB SERVICE BY DMM.R18" /></a>    
  </footer>

  <script>
   const url = 'http://192.168.1.50:8080/search?keyword=みなとりく';
   fetch(url)
     .then(response => {
       return response.json();
     })
     .then(body => {
       const response = body;

       console.log(response);

       this.items = response.items;
       this.update();
     });
  </script>
</app>
