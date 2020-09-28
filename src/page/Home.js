import React from "react";
import ListedItem from "../component/ListedItem";
import Button from "react-bootstrap/Button";
import Form from "react-bootstrap/Form";
import "./home.css";
import config from "../config";
import { Col } from "react-bootstrap";

export default class Home extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      brands: [],
      brand: null,
      fromYear: "",
      toYear: "",
      cars: [],
    };
    this.handleSearchClick = this.handleSearchClick.bind(this);
    this.handleBrandChange = this.handleBrandChange.bind(this);
    this.handleFromYearChange = this.handleFromYearChange.bind(this);
    this.handleToYearChange = this.handleToYearChange.bind(this);
  }
  componentDidMount() {
    fetch(`${config.baseURL}/brands`)
      .then((res) => res.json())
      .then((result) => {
        this.setState({
          brands: result,
        });
      });
  }
  /**
   *
   * @param {Event} e OnChange event
   */
  handleBrandChange(e) {
    this.setState({ brand: e.target.value });
  }

  handleFromYearChange(e) {
    this.setState({ fromYear: e.target.value });
  }

  handleToYearChange(e) {
    this.setState({ toYear: e.target.value });
  }

  handleSearchClick() {
    fetch(
      `${config.baseURL}/cars?brand=${this.state.brand}&fromYear=${this.state.fromYear}&toYear=${this.state.toYear}`
    )
      .then((res) => res.json())
      .then((result) => {
        this.setState({
          cars: result,
        });
      });
  }

  render() {
    const { brands } = this.state;

    return (
      <div className="Home">
        <div className="Filter">
          <Form>
            <Form.Control as="select" onChange={this.handleBrandChange}>
              <option>Please select a brand</option>
              {brands.map((brand) => (
                <option key={brand.id} value={brand.id}>
                  {brand.name}
                </option>
              ))}
            </Form.Control>
            <Form.Group>
              <Form.Label>Type a year</Form.Label>
              <Form.Row>
                <Col>
                  <Form.Control
                    type="text"
                    placeholder="from"
                    onChange={this.handleFromYearChange}
                  ></Form.Control>
                </Col>
                <Col>
                  <Form.Control
                    type="text"
                    placeholder="to"
                    onChange={this.handleToYearChange}
                  ></Form.Control>
                </Col>
              </Form.Row>
            </Form.Group>
          </Form>

          <Button
            onClick={this.handleSearchClick}
            disabled={this.state.brand === null}
          >
            Search
          </Button>
        </div>
        <div>
          {this.state.cars.map((car) => (
            <ListedItem key={car.id} {...car}></ListedItem>
          ))}
        </div>
      </div>
    );
  }
}
