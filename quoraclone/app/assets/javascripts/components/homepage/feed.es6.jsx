class Feed extends React.Component{

	constructor(){
	  super()
	  this.state = {
	    read: true,
	  	justQuestion: false,
	  	value: " "
	  }	
	  this.setFeed = this.setFeed.bind(this);
	  this.showFeed = this.showFeed.bind(this);
	  this.handleChange = this.handleChange.bind(this);
	  this.handleSubmit = this.handleSubmit.bind(this);

	}

	handleChange(event){
		this.setState({value: event.target.value});
		console.log(`${this.state.value}`)
	}

	handleSubmit(evernt){
		alert("a naem was usb" + this.state.value);
	}


	setFeed(){
	  this.setState({read: !this.state.read})
	  this.setState({justQuestion: !this.state.justQuestion})
	}



	showFeed(){
		if (this.state.read){
		  return <DisplayRead all_qs={this.props.all_questions}/>
		} else{
		  return <DisplayJustQuestions />
		}
	}



	render(){
		return(
			<div> 
				<form onSubmit={this.handleSubmit}> 
					<input type="text" value={this.state.value} onChange={this.handleChange}/>
					 <input type="submit" value="Submit" />
				</form>

				<h1> In here FOOLE!!!!</h1>
				<button type="button" onClick={this.setFeed}> Switch </button>
				{this.showFeed()}
			</div>

		)


	};


}