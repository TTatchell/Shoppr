import React from "react";
import { BrowserRouter, Switch, Route } from "react-router-dom";
import { Provider } from 'react-redux'
import configureStore from "../configureStore";

import Home from "./Home";
import Login from "./Login";

const store = configureStore();

class App extends React.Component {
  render() {
    return (
      <Provider store={store}>
        <BrowserRouter>
          <Switch>
            <Route exact path="/" component={Home} />
            <Route exact path="/" component={Login} />
          </Switch>
        </BrowserRouter>
      </Provider>
    );
  }
}

export default App;
