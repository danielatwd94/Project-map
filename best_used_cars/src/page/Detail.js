import React from "react";
import "./detail.css";
import Button from "react-bootstrap/Button";
import { Link } from "react-router-dom";
import config from "../config";

export default class Detail extends React.Component {
  constructor(props) {
    super(props);
    this.state = { car: {} };
  }
  componentDidMount() {
    fetch(`${config.baseURL}/car/${this.props.match.params.id}`)
      .then((res) => res.json())
      .then((result) => {
        this.setState({
          car: result,
        });
      });
  }
  render() {
    return (
      <div className="Detail">
        <Link to="/">{"<"} Back</Link>
        <div className="Wrapper">
          <div className="ImageContainer">
            <img
              alt="The car"
              src={
                this.state.car.image
                  ? `/images/cars/${this.state.car.id}.jpg`
                  : "/images/cars/default.jpg"
              }
            ></img>
          </div>
          <div className="DetailContainer">
            <div className="price">{this.state.car.price}€</div>
            <div className="DetailList">
              <p>Year: {this.state.car.year}</p>
              <p>Milage: {this.state.car.milage}</p>
              <p>{this.state.car.description}</p>
            </div>
            <div className="Contact">
              <Button href="mailto:best_used_cars@gmail.com">Email</Button>
            </div>
          </div>
        </div>
      </div>
    );
  }
}
