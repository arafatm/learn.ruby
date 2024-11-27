function splitStringWithEmojis(str) {
  // Regular expression to match emojis and non-emoji characters
  const regex = /([\u231A-\u3299\uD83C-\uDBFF\uDC00-\uDFFF\uFE0F])/g;
  // Split the string using the regular expression
  return str.split(regex).filter(Boolean);
}

// Example usage
const str = "Hello 🐂 World 🕉️!";
const result = splitStringWithEmojis(str);
console.log(result); // ["Hello ", "🐂", " World ", "🕉️", "!"]