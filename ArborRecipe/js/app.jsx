
import React from 'react';
import PropTypes from 'prop-types';
import Addbar from './addbar';

class App extends React.Component {
  /* Display number of likes and like/unlike button for one post
   * Reference on forms https://facebook.github.io/react/docs/forms.html
   */
    constructor(props){
        super(props);
        this.state = {
            data: "hi"
        }
    }

    handleCallback = (childData) =>{
        this.setState({data: childData})
        console.log(this.state.data)
    }


  render() {
    // This line automatically assigns this.state.numLikes to the const variable numLikes
    // Render number of likes
    return (
    //call addbar

        <div>
            <Addbar parentCallback = {this.handleCallback} />  
        </div>

    );
  }
}


export default App;
