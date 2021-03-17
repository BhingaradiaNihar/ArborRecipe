
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
          ingredients: [],
          recipelist: []
        }
        this.getRecipe = this.getRecipe.bind(this);
    }

    handleCallback = (childData) =>{
        this.setState({ingredients: childData})
        console.log(this.state.ingredients)
    }

    getRecipe(){
      const { ingredients }  = this.state
      console.log(ingredients);
      let url = window.location.href;       
      //i?ingredients=${encodeURIComponent(ingredients.join(','))}
      let urlapi = url + `api/i?ingredients=${encodeURIComponent(ingredients.join(','))}`;
      console.log(urlapi)


    fetch(urlapi, { credentials: 'same-origin' })
      .then((response) => {
        if (!response.ok) throw Error(response.statusText);
        return response.json();
      })
      .then((data) => {
        this.setState({
          recipelist: data["recipe"]
        })
        console.log(this.state.recipelist);
      })
      .catch((error) => console.log(error));
    }

  render() {
    // This line automatically assigns this.state.numLikes to the const variable numLikes
    // Render number of likes
    const { recipelist } = this.state;
    return (
    //call addbar


        <div>
            <Addbar parentCallback = {this.handleCallback} />
                <button type = "button" value ="Submit" onClick = {this.getRecipe}>Submit</button>
            
            {recipelist.map((recipe, index) => (
              <div key ={index.toString()} >        
                <p key = "rname">{recipe["recipe_name"]}</p>
                <p>Cooking time: {(recipe["cooking_time"]).replace(';','\n')}</p>
                <p>Instruction: {recipe["instruction"]}</p>
              </div>
            ))}
              
        </div>
    );
  }
}
//                <p>Instruction: {recipe["instruction"]}</p>
//           {recipelist["instruction"].split(";").map(instr =>(
//  <li>{instr}</li>
//  ))}

export default App;
