let app = require('express')();
app.get('/', (req, res) => {
  res.send('hello world');
});
// add returned server to the app instance so that it can be closed in the tests :)
app.server = app.listen(3000);

module.exports = app;