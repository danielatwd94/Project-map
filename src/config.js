const dev = {
  baseURL: "http://localhost:3000",
};
const prod = {
  baseURL: "",
};
export default process.env.NODE_ENV === "production" ? prod : dev;
