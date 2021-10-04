import { useState } from "react";

function AddItem(p) {
  const [item, setItem] = useState("");
  const { takeItem } = p;

  const taskAdded = () => {
    if (item.length > 1) {
      takeItem(item)
      setItem("")
    }
    else {
      alert("Must Enter Something"      )
    }
    }

    return (
            <>
  <div>
  <h2 style={{margin:"5px"}} >My To Do List</h2>
  <input type="text" id="myInput" placeholder="Title..." value={item} onChange = {(e) => setItem(e.target.value)}  />
  <span  className="addBtn" onClick = {taskAdded}>Add</span>
</div>

            </>
    )
}

export default AddItem;