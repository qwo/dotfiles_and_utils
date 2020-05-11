var fs = require('fs');

function output(data) {
  fs.writeFile('output.json', data, function(err) {
    if (err) throw err;
    console.log('It\'s saved!');
  });
}


