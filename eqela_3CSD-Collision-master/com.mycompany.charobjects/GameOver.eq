
/*
 * GameOver
 * Created by Eqela Studio 2.0b7.4
 */

public class GameOver : SEScene
{
	SESprite text;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		add_entity(SESpriteEntity.for_color(Color.instance("red"), get_scene_width(), get_scene_height()));
		rsc.prepare_font("myfont", "arial bold color=white",72);
		AudioClipManager.prepare("GameOver");
		AudioClipManager.play("GameOver");
		text = add_sprite_for_text("GAME OVER", "myfont");
		text.move(0.35*get_scene_width(), 0.4*get_scene_height());
	}

	public void cleanup() {
		base.cleanup();
	}
}