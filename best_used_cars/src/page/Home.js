import React from "react";
import ListedItem from "../component/ListedItem";
import Button from "react-bootstrap/Button";
import Form from "react-bootstrap/Form";
import "./home.css";
import config from "../config";

export default class Home extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      brands: [],
      brand: null,
      cars: [],
    };
    this.handleSearchClick = this.handleSearchClick.bind(this);
    this.handleBrandChange = this.handleBrandChange.bind(this);
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

  handleSearchClick() {
    fetch(`http://localhost:3000/cars?brand=${this.state.brand}`)
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
          </Form>

          <Button onClick={this.handleSearchClick}>Search</Button>
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
