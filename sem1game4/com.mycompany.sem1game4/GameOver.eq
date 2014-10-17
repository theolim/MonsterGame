
/*
 * GameOver
 * Created by Eqela Studio 2.0b7.4
 */

public class GameOver : SEScene
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
		
		rsc.prepare_image("gameover","Game_Over",w, h);
		background = add_sprite_for_image(SEImage.for_resource("gameover"));
		background.move(0,0);

		AudioClipManager.prepare("mario_6");
		AudioClipManager.play("mario_6");

		}
}


