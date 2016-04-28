;(function () {
  "use strict"

  Vue.component("vue-items", {

    template: "#items-template",

    data: function () {
      return {
        newItem: {},
        items: []
      }
    },

    init: function () {
      // TODO: Fetch the collection of items
    },

    methods: {

      handleNewItem: function () {
        var self = this
        // TODO: Bind template's form submit to this method
        console.log("handleNewItem called")
        $.ajax({
          method: "POST",
          url: "/api/items",
          data: { item: self.newItem }
        }).then(function (data) {
          // Push the new item onto your items array
          // Set the newItem to an empty object
          console.log(data)
        })
      }

    }

  })
})();
