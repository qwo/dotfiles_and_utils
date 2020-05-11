var github = require("octonode");

var fs = require('fs');
var _ = require('lodash');
var rl = require('readline-sync');
//not syncronous
//var prompt = require('prompt');


// create the TRANSFEREE account
var client = github.client({
  username: process.env.GITHUB_USER,
  password: process.env.GITHUB_PASS
});
var ghme = client.me();

// The account to be transfered from
var client = github.client(process.env.MY_TOKEN);

//I AM
ghme.info(function(err, data, headers) {
  console.log("error: " + err);
  //get your repos
  client.get('/users/stanzheng/repos', {
    page: 1,
    per_page: 50
  }, function(err, status, body, headers) {

    var repos = body;
    //fork each repo as they come in
    _.each(repos, function(value, key) {
      // Get two properties from the user: username and email
      var reponame = value.full_name;
      var answer = rl.question(reponame + ": " + value.description +
        "\n");
      // move or dont move
      if (answer === "yes") {
        console.log("moved:\n");
        ghme.fork(value.full_name, function(err, data) {
          console.log("forked and deleted :", reponame, "\n");
          client.repo(reponame).destroy();
        });
      } else {
        console.log("no change moving on \n");
      }
      //
    });
  });
});
