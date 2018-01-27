import test from 'ava';
import crypticons from '../';
import fs from 'fs';

const crypticonsLib = fs.readdirSync("./build/svg/");

test('css got moved', t => {
  t.truthy(fs.existsSync("./build/build.css"), "build.css does not exist!");
});

test('Crypticons are loaded', t => {
  t.truthy(crypticons, "Didn't find any crypticons.");
  t.not(Object.keys(crypticons).length, 0, "Didn't find any crypticons.")
});

test('Crypticons have keywords', t => {
  t.truthy(crypticons, "Didn't find any crypticons.");
  Object.keys(crypticons).forEach( point => {
    t.truthy(crypticons[point].keywords, 'The crypticon "' + point + '" doesn\'t have any keywords')
    t.not(crypticons[point].keywords.length, 0, 'The crypticon "' + point + '" doesn\'t have any keywords')
  })
});

test('Every crypticon is in ./build/data.json', t => {
  crypticonsLib.forEach( point => {
    point = point.replace('.svg', '')
    t.truthy(crypticons[point], './build/data.json doesn\'t include the crypticon "' + point + '"')
  })
})

test('No deprecated crypticons are in ./build/data.json', t => {
  Object.keys(crypticons).forEach( point => {
    t.truthy(crypticonsLib.indexOf(point+'.svg') >= 0, './build/data.json contains the deleted crypticon `' + point + '`, please remove it.' );
  })
})

test('Crypticons have svg', t => {
  t.truthy(crypticons, "Didn't find any crypticons.");
  Object.keys(crypticons).forEach( point => {
    t.truthy(crypticons[point].toSVG(), 'The crypticon "' + point + '" doesn\'t have svg')
  })
});

test('Crypticons have default html attributes', t => {
  t.truthy(crypticons, "Didn't find any crypticons.");
  Object.keys(crypticons).forEach( point => {
    var svg = crypticons[point].toSVG()
    t.regex(svg, /version="1\.1"/, 'The crypticon "' + point + '" doesn\'t have the version attribute')
    t.regex(svg, /aria\-hidden="true"/, 'The crypticon "' + point + '" doesn\'t have the aria-hidden attribute')
    t.regex(svg, new RegExp("width=\"" + crypticons[point].width + "\""), 'The crypticon "' + point + '" doesn\'t have the width attribute')
    t.regex(svg, new RegExp("height=\"" + crypticons[point].height + "\""), 'The crypticon "' + point + '" doesn\'t have the height attribute')
    t.regex(svg, new RegExp("viewBox=\"0 0 " + crypticons[point].width + " " + crypticons[point].height + "\""), 'The crypticon "' + point + '" doesn\'t have the viewBox attribute')
    t.regex(svg, new RegExp("class=\"crypticon crypticon-" + crypticons[point].symbol + "\""), 'The crypticon "' + point + '" doesn\'t have the class attribute')
  })
});

test('Passing in classnames will be included in output', t => {
  t.truthy(crypticons, "Didn't find any crypticons.");
  Object.keys(crypticons).forEach( point => {
    var svg = crypticons[point].toSVG({ class: "new-class another-class" })
    t.regex(svg, new RegExp("class=\"crypticon crypticon-" + crypticons[point].symbol + " new-class another-class\""), 'The crypticon "' + point + '" doesn\'t have the class attribute')
  })
});

test('Passing in aria-label will update the a11y options', t => {
  t.truthy(crypticons, "Didn't find any crypticons.");
  Object.keys(crypticons).forEach( point => {
    var svg = crypticons[point].toSVG({ "aria-label": "This is an icon" })
    t.regex(svg, new RegExp("aria\-label=\"This is an icon\""), 'The crypticon "' + point + '" doesn\'t have the aria-label attribute')
  })
});

test('Passing in width will size properly', t => {
  var svg = crypticons["bitcoin"].toSVG({ "height": 60 })
  t.regex(svg, new RegExp("width=\"60\""), 'The crypticon "x" doesn\'t have the width attribute scaled properly')
});

test('Passing in height will size properly', t => {
  var svg = crypticons["bitcoin"].toSVG({ "width": 45 })
  t.regex(svg, new RegExp("height=\"45\""), 'The crypticon "x" doesn\'t have the height attribute scaled properly')
});
