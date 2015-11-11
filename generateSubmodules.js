/**
 * This a script to generate the .gitmodules files for the apporpirate pulgins installed under vim/bundle
 */

var fs = require('fs');
var result = "";
var path1 = 'vim/bundle';

var directories = fs.readdirSync(__dirname + '/' + path1);
for (var i in directories) {
  var directory = directories[i];
  var path2 = path1 + '/' +  directory;
  var config = fs.readFileSync(__dirname + '/' +  path2 + '/.git/config', 'utf-8');
  var lines = config.split('\n');
  for (var j in lines) {
    var line = lines[j];
    if (line.indexOf('url') >= 0)
      result += '[submodule "' + path2  +'"] \n\tpath = ' + path2 + '\n' + line + '\n';  
  }
}

fs.writeFileSync('.gitmodules', result);

