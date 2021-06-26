// Hot Module Replacement (HMR) - Remove this snippet to remove HMR.
// Learn more: https://www.snowpack.dev/#hot-module-replacement
@scope(("import", "meta")) @val external hot: bool = "hot"

@scope(("import", "meta", "hot")) @val
external accept: unit => unit = "accept"

Emotion.injectGlobal(`
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
body {
  font-family: 'Poppins', sans-serif;
}`)

ReactDOM.render(
  <React.StrictMode> <App /> </React.StrictMode>,
  ReactDOM.querySelector("#root")->Belt.Option.getExn,
)

if hot {
  accept()
}
