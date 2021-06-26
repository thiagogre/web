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

@react.component
let make = () => {
  <header className=Styles.container>
    <div className=Styles.row>
      <h1> {`thiagogre`->React.string} </h1>
      <nav>
        <ul className=Styles.list>
          <li className=Styles.list>
            <a className=Styles.item href="#home"> {`Home`->React.string} </a>
          </li>
          <li className=Styles.list>
            <a className=Styles.item href="#about"> {`About`->React.string} </a>
          </li>
          <li className=Styles.list>
            <a className=Styles.item href="#training"> {`Academic`->React.string} </a>
          </li>
          <li className=Styles.list>
            <a className=Styles.item href="#skills"> {`Skills`->React.string} </a>
          </li>
          <li className=Styles.list>
            <a className=Styles.item href="#hobbies"> {`Hobbies`->React.string} </a>
          </li>
          <li className=Styles.list>
            <a className=Styles.item href="#contact"> {`Contact`->React.string} </a>
          </li>
        </ul>
      </nav>
    </div>
  </header>
}
