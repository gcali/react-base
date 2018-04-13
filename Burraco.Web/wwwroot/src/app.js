import { getText } from './lib';
import $ from 'jquery';

document.getElementById("fillthis").innerHTML = getText();

$("#fillthis").html("Filled with jquery");