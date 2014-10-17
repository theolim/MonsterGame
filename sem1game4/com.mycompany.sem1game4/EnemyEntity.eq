
/*
 * EnemyEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class EnemyEntity : SEEntity
{
	SESprite enemy;
	int w;
	int h;
	int mx;
	int my;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		rsc.prepare_image("joker","joker",0.1*w,0.2*h);
		enemy = add_sprite_for_image(SEImage.for_resource("joker"));
				enemy.move(Math.random(0,w),Math.random(0,h));
		
		}

	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);
		mx = enemy.get_x();
		my = enemy.get_y();
		

		enemy.move(mx+(MainScene.x-mx)/Math.random(30,110), my+(MainScene.y-my)/Math.random(30,110));

		if((mx + 0.15*get_scene_width() >= MainScene.x && mx <= MainScene.x) && (my + 0.15*get_scene_height() >= MainScene.y && my <= MainScene.y)) {
			MainScene.collide = true;			
		}
	}
		
	public void cleanup() {
		base.cleanup();
	}
}
