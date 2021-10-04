import Header from "./AddItem";

function Nav(props) {

  const { giveMe } = props;

  const getItem = (item) => {
    console.log("This is header", item)
    giveMe(item)
    
  }
  return (
    <div id="myDIV" className="header">
      <Header takeItem = {getItem}  />
    </div>
  );
}

export default Nav;
