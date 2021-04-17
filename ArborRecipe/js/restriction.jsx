import React from 'react';

class Restriction_bar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      list: [],

    };
    this.addItem = this.addItem.bind(this);
    this.removeItem = this.removeItem.bind(this);
  }

  addItem(e) {
    // Prevent button click from submitting form
    e.preventDefault(); 
    // Create variables for our list, the item to add, and our form
    let list = this.state.list;
    const newItem = document.getElementById("addInput_restr");

    // If our input has a value
    if (newItem.value != "") {
      // Add the new item to the end of our list array

      for (var index = 0; index < list.length; index++) {
        if (list[index] === newItem.value){
          return;
        }
      }

      list.push(newItem.value);
      this.props.parentCallback(list);
      // Then we use that to set the state for list
      this.setState({
        list: list
      });
    }
  }


  removeItem(item) {
    // Put our list into an array
    console.log("deleting", item);
    const list = this.state.list.slice();
    // Check to see if item passed in matches item in array
    list.some((el, i) => {
      if (el === item) {
        // If item matches, remove it from array
        list.splice(i, 1);
        return true;
      }
    });
    this.props.parentCallback(list);
    // Set state to list
    this.setState({
      list: list
    });
  }

  render() {
    return (
       <div className = "container">
          <div className="section_restr">
              <select className="form_restr" id="addInput_restr">
                <option value="">Choose restrections</option>
                <option value="Dairy">Dairy</option>
                <option value="Egg">Egg</option>
                <option value="Peanut">Peanut</option>
                <option value="Shellfish">Shellfish</option>
                <option value="Vegetarian">Vegetarian</option>
                <option value="Halal">Halal</option>
              </select>


              <button className="add_items_button" onClick={this.addItem}>
                Add Restriction
              </button>

            <List items={this.state.list} delete={this.removeItem} />
          </div>
        </div>
    );
  }
}

class List extends React.Component {
  constructor(props) {
    super(props);  
  }
  
  render()
   {
    return (

      <div>
          <ul>
            {this.props.items.map(item => (
              <li key={item}>
                
                <div className = "input_box"
                  onClick={() => this.props.delete(item)}
                  >{item} &nbsp;</div>    
              </li>
            ))}
          </ul>
        </div>
    )
  }
}

export default Restriction_bar;

/**
 *   render() {
    return (
       <div className = "container">
          <div className="section_restr">
          
            <form className="form" id="addItemForm_restr">
              <input
                type="text"
                className="input"       
                id="addInput_restr"
                placeholder="Add Restriction"
              />
              <button className="add_items_button" onClick={this.addItem}>
                Add Restriction
              </button>
            </form>
            <List items={this.state.list} delete={this.removeItem} />
          </div>
        </div>
    );
  }
 * 
 * 
 */