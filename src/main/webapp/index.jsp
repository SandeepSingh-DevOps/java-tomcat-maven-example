<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

body {
  background-color: #f1f1f1;
  padding: 20px;
  font-family: Arial;
}

/* Center website */
.main {
  max-width: 1000px;
  margin: auto;
}

h1 {
  font-size: 50px;
  word-break: break-all;
}

.row {
  margin: 8px -16px;
}

/* Add padding BETWEEN each column */
.row,
.row > .column {
  padding: 8px;
}

/* Create four equal columns that floats next to each other */
.column {
  float: left;
  width: 25%;
}

/* Clear floats after rows */ 
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Content */
.content {
  background-color: white;
  padding: 10px;
}

/* Responsive layout - makes a two column-layout instead of four columns */
@media screen and (max-width: 900px) {
  .column {
    width: 50%;
  }
}

/* Responsive layout - makes the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
  }
}
</style>
</head>
<body>

<!-- MAIN (Center website) -->
<div class="main">

<h1>Expedition</h1>
<hr>

<h2>PORTFOLIO</h2>
<p>Resize the browser window to see the responsive effect.</p>

<!-- Portfolio Gallery Grid -->
<div class="row">
  <div class="column">
    <div class="content">
      <img src="1.jpeg" alt="Mountains" style="width:100%">
      <h3>One from Lavasa</h3>
      <p>Like all great travellers, I have seen more than I remember and remember more than I have seen.</p>
    </div>
  </div>
  <div class="column">
    <div class="content">
    <img src="2.jpeg" alt="Lights" style="width:100%">
      <h3>One from Kashid Beach</h3>
      <p>Many people resist change and hold on to what the universe is telling them to release. However, you should embrace positive change and make it part of your life. If things aren not going as planned, maybe its time to re-examine your actions and consider what direction really matters to you.</p>
    </div>
  </div>
  <div class="column">
    <div class="content">
    <img src="3.jpeg" alt="Nature" style="width:100%">
      <h3>One from Koregaon Park</h3>
      <p>I love places that make you realize how tiny you and your problems are.</p>
    </div>
  </div>
  <div class="column">
    <div class="content">
    <img src="4.jpeg" alt="Mountains" style="width:100%">
      <h3>One from Alibagh</h3>
      <p>Sunsets are not only beautiful, but they also have so much meaning. They signify endings, change, and transformation, they remind us that change is part of life and everything has an ending.</p>
    </div>
  </div>
<!-- END GRID -->
</div>

<div class="content">
  <img src="5.jpeg" alt="Bear" style="width:100%">
  <h3>One from Nature Walks on weekend</h3>
  <p>We are constantly shown the REAL WORLD on our screens but we come face to face with the real world out on the trail.</p>
  <p>What a funny world we live in when we will not turn our phones off but we get excited to see we have walked far enough to lose service.</p>
</div>

<!-- END MAIN -->
</div>

</body>
</html>
