import React from "react";
import { BrowserRouter as Router, Switch, Route } from "react-router-dom";
import "bootstrap/dist/css/bootstrap.min.css";

import Home from "./page/Home.js";
import Detail from "./page/Detail.js";

function App() {
  return (
    <div className="App">
      <Router>
        <div>
          <Switch>
            <Route path="/detail/:id" component={Detail} />
            <Route path="/">
              <Home />
            </Route>
          </Switch>
        </div>
      </Router>
    </div>
  );
}

export default App;
