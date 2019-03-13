<template>
  <v-app dark>
    <v-toolbar>
      <v-avatar>
        <img v-bind:src="me" alt="avatar" />
      </v-avatar>
      <v-toolbar-title>Andrew Perry</v-toolbar-title>
      <v-spacer></v-spacer>
      <v-toolbar-items class="hidden-sm-and-down">
        <v-menu offset-y>
          <template v-slot:activator="{ on }">
            <v-btn dark v-on="on" flat>
              Code
            </v-btn>
          </template>
          <span v-for="(item, index) in code" :key="index" flat>
            <v-btn
              target="_blank"
              flat
              fab
              v-bind:href="item.href"
              style="display: block; margin-left: auto; margin-right: auto;"
            >
              <img v-bind:src="item.image" alt="avatar" />
            </v-btn>
          </span>
        </v-menu>
        <v-btn flat>Interests</v-btn>
        <v-btn flat>CV</v-btn>>
        <v-btn flat>Skills</v-btn>
      </v-toolbar-items>
    </v-toolbar>

    <v-content>
      <img
        style="float:left;width:100%;height:100%;object-fit:cover;"
        v-bind:src="background"
      />
    </v-content>
  </v-app>
</template>
<script>
import img from "../public/img/work-background.jpg";
import me from "../public/img/me.jpg";
import github from "../public/img/PNG/GitHub-Mark-Light-64px.png";
import gitlab from "../public/img/gitlab-icon-rgb.svg";
export default {
  name: "App",
  data() {
    return {
      background: img,
      me: me,
      code: [
        {
          image: github,
          href: "https://github.com/andyjp94"
        },
        {
          image: gitlab,
          href: "https://gitlab.com/andyjp94"
        }
      ]
      //
    };
  }
};
</script>
<style>
html {
  overflow-y: hidden;
}
</style>
