import { useState } from "react";

function AddItem(p) {
  const [item, setItem] = useState("");
  const { takeItem } = p;
  
  function submit(e) {
    e.preventDefault()
    taskAdded()
  }

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
  <form onSubmit={submit}>
  <input type="text" id="myInput" placeholder="Title..." value={item} onChange = {(e) => setItem(e.target.value)}  />
  <input type="submit" className="addBtn" onClick={taskAdded}>Add</input>
  </form>
</div>

            </>
    )
}

export default AddItem;
