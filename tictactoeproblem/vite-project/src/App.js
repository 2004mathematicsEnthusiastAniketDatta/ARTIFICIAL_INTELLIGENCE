"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const react_1 = require("react");
require("./App.css");
const Block_1 = __importDefault(require("./components/Block"));
function App() {
    const [count, setCount] = (0, react_1.useState)(0);
    return (<>
      <div className="board">
       <div className="row">
        <Block_1.default />
        <Block_1.default />
        <Block_1.default />
       </div>
       <div className="row">
        <Block_1.default />
        <Block_1.default />
        <Block_1.default />
       </div>
       <div className="row">
        <Block_1.default />
        <Block_1.default />
        <Block_1.default />
       </div>
      </div>;
    </>);
}
exports.default = App;
