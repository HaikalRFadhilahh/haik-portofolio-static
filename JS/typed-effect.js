new TypeIt("#work-role", {
  loop: true, // biar terus berputar
  speed: 140,
  deleteSpeed: 80,
  waitUntilVisible: true,
})
  .type(
    "<span style='color: #21a9d4'>Dev</span><span style='color: #386873'>Sec</span><span style='color: #233a5e'>Ops</span> Engineer."
  )
  .pause(1050)
  .delete()
  .type("<span style='color: #264BAF'>Backend</span> Developer.")
  .pause(1050)
  .delete()
  .type(
    "<span style='color: #5D54C4'>Application </span><span style='color: #386873'>Security</span> Engineer."
  )
  .pause(1050)
  .delete()
  .go();
