<template>
  <div id="home-page">
    <center>
      <b-card class="main-card text-light">
        <b-card-title class="h2">
          Perfil
          <b-icon-people-fill />
        </b-card-title>
        <b-card-body>
          <b-card-text>
            <p>Desde aqui puedes ver y editar tu perfil</p>
          </b-card-text>
        </b-card-body>
      </b-card>
    </center>
  </div>
</template>

<script>
export default {};
</script>

<style scoped>
center {
  margin: 5vw;
  margin-inline: 15vw;
}
.main-card {
  background-color: rgba(0, 0, 0, 0.5);
}
p {
  font-size: 20px;
}
</style>
