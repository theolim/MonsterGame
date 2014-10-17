
/*
 * Main.eq
 * Generated by Eqela Studio 2.0b7.4
 */

class Main : LayerWidget, EventReceiver
{
	public void initialize() {
		base.initialize(); 
		set_size_request_override(px("50mm"),px("70mm"));
		add(CanvasWidget.for_colors(Color.instance("black"),Color.instance("#0000FF")));
		//add(LabelWidget.for_string("UST").set_font(Theme.font().modify("6mm bold color=black outline-color=white")));	
		add(ButtonWidget.instance().set_event("click"));
		
	}

	public void on_event(Object o) {
		if("click".equals(o)) {
		add(LabelWidget.for_string("UST").set_font(Theme.font().modify("6mm bold color=black outline-color=white")));	
			
		}
	}
}
