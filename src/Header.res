module Styles = {
  open Emotion
  let container = css({
    "width": "100%",
    "height": 70,
    "position": "fixed",
    "boxShadow": "0 4px 2px -2px gray",
  })
  let row = css({
    "margin": "auto",
    "maxWidth": 1600,
    "display": "flex",
    "justifyContent": "space-around",
    "alignItems": "center",
    "height": "100%",
  })
  let list = css({
    "listStyle": "none",
    "display": "inline-block",
    "padding": 0,
    "margin": 0,
  })
  let item = css({
    "marginLeft": 30,
    "textDecoration": "none",
    "fontSize": 15,
    "color": "black",
    "fontWeight": 600,
  })
  let link = css({
    "position": "relative",
  })
}

type item = {href: string, text: string}

let items = [
  {href: "home", text: "Home"},
  {href: "about", text: "About"},
  {href: "academic", text: "Academic"},
  {href: "skills", text: "Skills"},
  {href: "hobbies", text: "Hobbies"},
  {href: "contact", text: "Contact"},
]

@react.component
let make = () => {
  let content = Belt.Array.map(items, item => {
    <li className=Styles.list>
      <a className=Styles.item href={`#${item.href}`}> {React.string(item.text)} </a>
    </li>
  })

  <header className=Styles.container>
    <div className=Styles.row>
      <h1> {`thiagogre`->React.string} </h1>
      <nav> <ul className=Styles.list> {React.array(content)} </ul> </nav>
    </div>
  </header>
}
