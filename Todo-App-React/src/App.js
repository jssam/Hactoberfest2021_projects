import { useEffect, useState } from "react";
import "./App.css";
import Header from "./components/Header/Header";
import Todo from "./components/Todo/Todo";

const App = () => {

  const [myTodo, setTodo] = useState([]);

  useEffect(() => {
    const prevTodos = JSON.parse(localStorage.getItem("Todos"))
    if (prevTodos) {
      setTodo(prevTodos)
    }

  }, [])

  useEffect(() => {
    localStorage.setItem("Todos", JSON.stringify(myTodo));
  }, [myTodo])

  const takeIt = (item) => {
    console.log("This is App", item);
    setTodo((prevTodo) => {
      return [...prevTodo, { msg: item, isDone: false }];
    });
  };

  const deleted = (dlt) => {
    const newTodo = myTodo.filter((val, index) => {
      return index !== dlt;
    });
    setTodo(newTodo);
  };

  const checkComplete = (check) => {
    let pTodo = [...myTodo];
    let cTodo = myTodo[check];

    if (cTodo.isDone) {
      cTodo.isDone = false;
    } else {
      cTodo.isDone = true;
    }

    pTodo[check] = cTodo;
    setTodo(pTodo);
  };
  return (
    <>
      <Header giveMe={takeIt} />
      <Todo list={myTodo} deleteRequest={deleted} check={checkComplete} />
    </>
  );
};

export default App;
