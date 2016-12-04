class TheQuestion extends React.Component{

	constructor(){
		super()
	}


	render(){
		return(
 			<div>
 				<p>{this.props.theQ.title}</p>
 			</div>
		)
	};

}