import React, { Component } from "react";
import Paragraph from '../Presentation/Paragraph';

export default class HelloWorldContainer extends Component {
    constructor(props) {
        super(props);
        this.default_text = "Hello world";
    }

    render() {
        return <Paragraph text={this.default_text} />
    }
}