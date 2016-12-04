class DisplayRead extends React.Component{

	constructor(){
		super()
		this.state = {
			data: [],
			toShow: true
		}
		this.setShow = this.setShow.bind(this);
	}

	componentDidMount(){
		this.setState({data: this.props.all_qs})
		debugger
	}

	setShow(){
		return(
			<div>
				{this.props.all_qs.map((q, i) =>{
					return <TheQuestion theQ={q} key={i}/>
				})}
			</div>
		)


	}

	render(){

		return(
			<div>
				<h1> In Display Read</h1>
				{this.setShow()}
			</div>
			
		)

	};

}