var github = require("octonode");

var fs = require('fs');
var _ = require('lodash');
var rl = require('readline-sync');
//not syncronous
//var prompt = require('prompt');


// create the new host account
var clienthost = github.client(process.env.HOST_GITHUB);
var ghme = clienthost.me();

// The account to be transfered to
var client = github.client(process.env.TRANSFEREE_GITHUB);

//I AM
ghme.info(function(err, data, headers) {
  console.log(data);
  //get your repos
  client.get('/users/stanleyzhengnyc/repos', {
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
      if (answer === "y") {
        console.log("moved:\n");
        ghme.fork(value.full_name, function(err, data) {
          console.log("forked and deleted :", reponame, "\n");
          client.repo(reponame).destroy();
        });
      } 
      else if (answer === "d") {
        console.log("deleting me!")
        ghme.repo(reponame).destroy();
      }
      else {
        console.log("no change moving on \n");
      }
      //
    });
  });
});
