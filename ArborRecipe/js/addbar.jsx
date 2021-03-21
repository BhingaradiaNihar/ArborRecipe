import React from 'react';

class Addbar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      list: []

    };
    this.addItem = this.addItem.bind(this);
    this.removeItem = this.removeItem.bind(this);
  }


  addItem(e) {
    // Prevent button click from submitting form
    e.preventDefault(); 

    // Create variables for our list, the item to add, and our form
    let list = this.state.list;
    const newItem = document.getElementById("addInput");
    const form = document.getElementById("addItemForm");

    // If our input has a value
    if (newItem.value != "") {
      // Add the new item to the end of our list array
      list.push(newItem.value);
      // Then we use that to set the state for list
      this.setState({
        list: list
      });
      this.props.parentCallback(newItem.value);
      // Finally, we need to reset the form
      newItem.classList.remove("is-danger");
      form.reset();
    } else {
      // If the input doesn't have a value, make the border red since it's required
      newItem.classList.add("is-danger");
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
    // Set state to list
    this.setState({
      list: list
    });
  }

  render() {
    return (
      <div className="content">
        <div className="container">
          

          <section className="section">
            <form className="form" id="addItemForm">
              <input
                type="text"
                className="input"       
                id="addInput"
                placeholder="Add Ingredients"
              />
              <button className="button-is-info" onClick={this.addItem}>
                Add Item
              </button>
            </form>
          </section>

          <section className="section">
            <List items={this.state.list} delete={this.removeItem} />
          </section>

        </div>
      </div>
    );
  }
}

class List extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      filtered: []
    };
    this.handleChange = this.handleChange.bind(this);
  }
  
  componentDidMount() {
    this.setState({
      filtered: this.props.items
    });
  }

  
  handleChange(e) {
    // Variable to hold the original version of the list
    let currentList = [];
    // Variable to hold the filtered list before putting into state
    let newList = [];
    
    // If the search bar isn't empty
    if (e.target.value !== "") {
      // Assign the original list to currentList
      currentList = this.props.items;
      
      // Use .filter() to determine which items should be displayed
      // based on the search terms
      newList = currentList.filter(item => {
        // change current item to lowercase
        const lc = item.toLowerCase();
        // change search term to lowercase
        const filter = e.target.value.toLowerCase();
        // check to see if the current list item includes the search term
        // If it does, it will be added to newList. Using lowercase eliminates
        // issues with capitalization in search terms and search content
        return lc.includes(filter);
      });
    } else {
      // If the search bar is empty, set newList to original task list
      newList = this.props.items;
    }
    // Set the filtered state based on what our rules added to newList
    this.setState({
      filtered: newList
    });
  }
  
  render()
   {
    return (

      <div>
          <ul>
            {this.state.filtered.map(item => (
              <li key={item}>
                
                <div className ="box"
                  onClick={() => this.props.delete(item)}
                  >{item} &nbsp;</div>    
              </li>
            ))}
          </ul>
        </div>
    )
  }
}

export default Addbar;
