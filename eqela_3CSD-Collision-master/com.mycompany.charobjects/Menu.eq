
/*
 * Menu
 * Created by Eqela Studio 2.0b7.4
 */

public class Menu : SEScene
{
	SESprite text;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
		rsc.prepare_font("myfont", "arial bold color=black",72);
		text = add_sprite_for_text("START", "myfont");
		text.move(0.4*get_scene_width(), 0.4*get_scene_height());
		
	}

	public void on_pointer_press(SEPointerInfo p1) {

	if(p1.is_inside(0,0, 0.5*get_scene_width(), 0.5*get_scene_height())) {
		base.on_pointer_press(p1);
		switch_scene(new MainScene());
		}
	}

	public void cleanup() {
		base.cleanup();
	}
}