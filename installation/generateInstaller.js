var fs = require("fs");

var echos = "";

for (var i = 0; i < 1; ++i) {
    echos += generateRandomEcho(39) + "\n";
}

var colors =
   'Red="\\e[0;31m"' +
   '\nYellow="\\e[1;33m"' +
   '\nGreen="\\e[0;32m"' +
   '\nBlue="\\e[0;34m"' +
   '\nPurple="\\e[0;35m"' +
   '\nBlack="\\e[0;30m"' +
   '\nCyan="\\e[0;36m"' +
   '\nBrown="\\e[0;33m"' +
   '\nLightGray="\\e[0;37m"' +
   '\nDarkGray="\\e[1;30m"' +
   '\nLightBlue="\\e[1;34m"' +
   '\nLightGreen="\\e[1;32m"' +
   '\nLightCyan="\\e[1;36m"' +
   '\nLightRed="\\e[1;31m"' +
   '\nLightPurple="\\e[1;35m"' +
   '\nWhite="\\e[1;37m"\n\n';

var data = colors + echos;

fs.writeFile("./installation/graphics/colors.sh", data, function (err, data) {
    if (err) { process.exit(err); }
});


/*
 *  Private
 * */

function generateRandomEcho (length) {
    var newEcho = "echo -e \"";

    for (var i = 0; i < length; ++i ) {
        newEcho += "${" + getRandomColor() + "}" + getRandomOpacity();
    }

    newEcho += "${White}\"";
    return newEcho;
}


function getRandomOpacity () {
    var l = 0;
    var opacity = "▒▓█";
    l = opacity.length;

    return opacity[Math.floor(Math.random() * l)];
}

function getRandomColor () {
    var l = 0;
    var colors = [
        "Red",
        "Yellow",
        "Green",
        "Blue",
        "Purple",
        "Black",
        "Cyan",
        "Brown",
        "LightGray",
        "DarkGray",
        "LightBlue",
        "LightGreen",
        "LightCyan",
        "LightRed",
        "LightPurple",
        "White"
    ];
    l = colors.length;

    return colors[Math.floor(Math.random() * l)];
}
