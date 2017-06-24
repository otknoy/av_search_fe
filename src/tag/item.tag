<item>
  <p><a href="{ url }">{ title }</a></p>
  <img src="{ imageUrl }"></img>
  <div>
    <p each="{ g in genre }"><a href="/?keyword={ g }">{ g }</a></p>
  </div>

  <style>
    :scope {
      display: block;
    }

   img {
     width: 100%;
     height: auto;
   }
  </style>
</item>
