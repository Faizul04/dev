import React, { Component } from "react";
// import logo from './logo.svg';
import "./App.css";
import { Table } from "react-bootstrap";

import "bootstrap/dist/css/bootstrap.min.css";

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      error: null,
      users: [],
    };
  }

  componentDidMount() {
    const url = "http://localhost:5000/users";
    fetch(url)
      .then((response) => response.json())
      .then((result) => {
        this.setState({
          users: result,
        });
      })
      .catch((err) => console.log(err));
  }

  render() {
    const { error, users } = this.state;
    if (error) {
      return <div>Error: {error}</div>;
    } else {
       return (
    <div>
      <h1>React App</h1>
      {/* Include the SVG code directly */}
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 841.9 595.3">
        <g fill="#61DAFB">
          {/* ... (your SVG path, circle, etc.) */}
        </g>
      </svg>
    </div>
      );
    }
  }
}

export default App;
