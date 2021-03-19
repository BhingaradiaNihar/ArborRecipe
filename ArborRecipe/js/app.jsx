
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
          restrictions: [],
          recipelist: []
        }
        this.getRecipe = this.getRecipe.bind(this);
    }

    handleCallback1 = (childData) =>{

      const {ingredients} = this.state
      ingredients.push(childData.toString());
      this.setState({ingredients: ingredients });
      console.log("1",this.state.ingredients)
    }

    handleCallback2 = (childData) =>{
      const {restrictions} = this.state
      restrictions.push(childData.toString());
      this.setState({restrictions: restrictions})
      console.log("2",this.state.restrictions)
    }

    getRecipe(){
      const { ingredients }  = this.state
      const {restrictions} = this.state
      let url = window.location.href;       
      //i?ingredients=${encodeURIComponent(ingredients.join(','))}
      let urlapi = url + `api/i?ingredients=${encodeURIComponent(ingredients.join(','))}&restrictions=${encodeURIComponent(restrictions.join(','))}`;

      console.log("urlapi = ", urlapi)

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
            <Addbar parentCallback = {this.handleCallback1} />

                <button className = 'submit-button' type = "button" value ="Submit" onClick = {this.getRecipe}>Search</button>
                <br></br>
                <br></br>
                <br></br>
            {recipelist.map((recipe, index) => (
              <div key ={index.toString()} clas sName = "recipe">
              <b>Recipe: {index + 1}</b>
                <p id="recipeName"classkey = "rname">{recipe["recipe_name"]}</p>
                <p id="prepTime">Preparation time: {recipe["prep_time"]} minutes</p>
                <p id="cookingTime">Cooking time: {recipe["cooking_time"]} minutes</p>


                <p>Ingredients: </p>
                {(recipe["ingredients"]).split(';').map((ingr, ind)=>(

                   <li key = {index.toString()} >{ingr}</li>

                  ))}


                <p>Instruction:  </p>
                {(recipe["instruction"]).split(';').map((instr, ind)=>(

                  <li key = {index.toString()} >{instr}</li>

                ))}
                <br></br>
                <br></br>
                <br></br>
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
