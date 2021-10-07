import { useState } from "react";

function AddItem(p) {
  const [item, setItem] = useState("");
  const { takeItem } = p;
  
  // see this post for my solution https://stackoverflow.com/a/31273404
  const handleKeyDown = (event) => {
    if (event.key === 'Enter') {
      taskAdded()
    }
  }
  
  const taskAdded = () => {
    if (item.length > 1) {
      takeItem(item);
      setItem("");
    } else {
      alert("Please enter your todo");
    }
  };

  return (
    <>
      <div>
        <h2 style={{ margin: "5px" }}>My To Do List</h2>
        <input
          type="text"
          id="myInput"
          placeholder="Title..."
          value={item}
          onChange={(e) => setItem(e.target.value)}
          onKeyDown={handleKeyDown}
        />
        <button className="addBtn" onClick={taskAdded}>
          Add
        </button>
      </div>
    </>
  );
}

export default AddItem;
