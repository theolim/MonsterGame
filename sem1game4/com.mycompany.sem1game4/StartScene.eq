/*
 * Menu
 * Created by Eqela Studio 2.0b7.4
 */
public class StartScene : SEScene
{
	SESprite background;
	int w;
	int h;
	public static int x;
	public static int y;
	int i;
	SESprite play;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
		w = get_scene_width();
		h = get_scene_height();
		
		rsc.prepare_image("gotham","background",w, h);
		background = add_sprite_for_image(SEImage.for_resource("gotham"));
		background.move(0,0);
		rsc.prepare_image("start","start",0.2*w,0.2*h);
		play = add_sprite_for_image(SEImage.for_resource("start"));
		play.move(0.4*w,0.4*h);

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
