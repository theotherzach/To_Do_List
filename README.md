# To Do List


The goal of this exercise is to manage your TODOs without full page refreshes by using Vue. No specific instructions, just guidelines based on what you've already done.


+ Follow the [video](https://youtu.be/6suQEtdyP20) to get started.
+ Check out [yesterday's component](https://github.com/theotherzach/vue_ajax/blob/implement-user-edit/app/assets/javascripts/components/user.js)
+ Check out [yesterday's template](https://github.com/theotherzach/vue_ajax/blob/implement-user-edit/app/views/vue_templates/_user.html)


```javascript
// Get collection of "things" from server
var self = this

$.ajax({
  method: "GET",
  url: "/api/things"
}).then(function (data) {
  console.log("promise: ", data) 
})
```

```javascript
// Create new "thing"
var self = this

$.ajax({
  method: "POST",
  url: "/api/things"
  data: self.newThing
}).then(function (data) {
  self.newThing = {}
  self.things.push(data)
  console.log("promise: ", data) 
})
```

```javascript
// Save existing object "thing" to server

methods: {

  someHandler: function (thing) {

    var self = this

    $.ajax({
      method: "PATCH",
      url: "/api/things/" + self.thing.id,
      data: self.thing
    }).then(function (data) {
      console.log("promise: ", data) 
    })
  }
}
```
