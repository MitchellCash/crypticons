import test from 'ava';
import fs from 'fs';

const libs = fs.readdirSync("./lib/svg/");
const data = JSON.parse(fs.readFileSync("./lib/data.json"))

test('Crypticons are loaded', t => {
  t.truthy(libs, "Didn't find any crypticons.");
  t.not(Object.keys(libs).length, 0, "Didn't find any crypticons.")
});

test('Crypticons have keywords', t => {
  t.truthy(data, "Didn't find any crypticons.");
  Object.keys(data).forEach( point => {
    t.truthy(data[point].keywords, 'The crypticon "' + point + '" doesn\'t have any keywords')
    t.not(data[point].keywords.length, 0, 'The crypticon "' + point + '" doesn\'t have any keywords')
  })
});

test('Every crypticon is in ./lib/data.json', t => {
  libs.forEach( point => {
    point = point.replace('.svg', '')
    t.truthy(data[point], './lib/data.json doesn\'t include the crypticon "' + point + '"')
  })
})

test('No deprecated crypticons are in ./lib/data.json', t => {
  Object.keys(data).forEach( point => {
    t.truthy(libs.indexOf(point+'.svg') >= 0, './lib/data.json contains the deleted crypticon `' + point + '`, please remove it.' );
  })
})
