import React from "react";
import { Link } from "react-router-dom";
import "./listeditem.css";

function ListedItem(props) {
  return (
    <Link to={`/detail/${props.id}`} className="ListedItem">
      <img
        alt="The car"
        src={
          props.image
            ? `/images/cars/${props.id}.jpg`
            : "/images/cars/default.jpg"
        }
      ></img>
      <table>
        <tbody>
          <tr>
            <td>{props.year}</td>
            <td>{props.price} €</td>
            <td>{props.milage} KM</td>
          </tr>
          <tr>
            <td colSpan="3">{props.description}</td>
          </tr>
        </tbody>
      </table>
    </Link>
  );
}
export default ListedItem;
