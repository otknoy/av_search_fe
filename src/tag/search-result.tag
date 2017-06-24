<search-result>
  <item each="{ opts.items }" data="{ this }"></item>

  <script>
   this.on('update', () => {
     console.log(`update search-result`);
   });

  </script>
</search-result>
