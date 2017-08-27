<template>
  <div>
    <header>
      <h1>AV Search</h1>
      <router-link to="/search">hoge</router-link>

    </header>

    <article>
      <section>a</section>
      <section>b</section>
    </article>

    <dmm-credit></dmm-credit>
  </div>
</template>

<script>
 import DmmCredit from './DmmCredit.vue';

 export default {
   components: {
     DmmCredit
   }
 }
</script>

<style>
</style>
