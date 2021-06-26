Emotion.injectGlobal(`
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
body {
  font-family: 'Poppins', sans-serif;
}`)

module App = {
  @react.component
  let make = () => {
    <Header />
  }
}

switch ReactDOM.querySelector("#root") {
| Some(root) => ReactDOM.render(<App />, root)
| None => Js.Console.error("Missing #root element")
}
