App = {
   load: async () => {
    // Load app ..
    await App.loadWeb3()
   }
},

$(() => {
  $(window).load(() => {
    App.load()
  })
})