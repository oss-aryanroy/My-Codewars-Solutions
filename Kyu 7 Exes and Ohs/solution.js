function XO(str) {
  let charC = {};
  for (let i of str.split("")) {
    i = i.toLowerCase();
    if (i in charC) {
      charC[i]++;
    } else {
      charC[i] = 1;
    }
  }
  return charC["o"] == charC["x"];
}

let testCases = ["xo", "xxOo", "xxxm", "Oo", "ooom", "xxxoo"];
for (let i of testCases) {
  console.log(XO(i));
}
