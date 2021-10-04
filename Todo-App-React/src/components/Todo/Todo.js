import List from "./List";

function Todo(props) {

  const { list, deleteRequest , check } = props;
  
  const dlt = (itm) => {
    deleteRequest(itm)
  }



  return (
    <ul id="myUL">
      <List sendTodo = {list} done = {check} wantDelete ={dlt} />
      {/* {
        list.map(
          (todo , key) => {
            return (
              <List todo={todo}  idx={key} wantDelete = {dlt} done = {check} />
            )
          }
        )
      } */}
    </ul>
  );
}

export default Todo;
