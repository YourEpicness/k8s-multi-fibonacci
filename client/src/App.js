import "./App.css";
import { BrowserRouter as Router, Route, Link } from "react-router-dom";

import Fib from "./pages/Fib";
import OtherPage from "./pages/OtherPage";

function App() {
  return (
    <Router>
      <div className="App">
        <header className="App-header">
          <Link to="/" className="links">
            Home
          </Link>
          <h1 className="App-title"> Fib Calculator v.k8s</h1>
          <Link to="/otherpage" className="links">
            Other Page
          </Link>
        </header>
        <div>
          <Route exact path="/" component={Fib} />
          <Route path="/otherpage" component={OtherPage} />
        </div>
      </div>
    </Router>
  );
}

export default App;
