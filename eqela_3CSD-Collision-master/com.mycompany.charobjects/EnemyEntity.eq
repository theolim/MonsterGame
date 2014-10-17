
/*
 * EnemyEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class EnemyEntity : SEEntity
{
	SESprite badfish;
	int w;
	int h;
	int we;
	int he;
	int speed;
	public static int ex;
	public static int ey;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();

		rsc.prepare_image("image2", "badfish", 0.1*w, 0.1*h);
		rsc.prepare_image("image3", "badfish1", 0.1*w, 0.1*h);
		badfish = add_sprite_for_image(SEImage.for_resource("image2"));
		we = badfish.get_width();
        he = badfish.get_height();
		badfish.move(Math.random(0,w),Math.random(0,h));
		speed = Math.random(30, 100);
	}

	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);
		ex = badfish.get_x();
		ey = badfish.get_y();
		
		if(ex < MainScene.x) {
		badfish.set_image(SEImage.for_resource("image3"));	
		}
		else {
		badfish.set_image(SEImage.for_resource("image2"));	
		}

		badfish.move(ex+(MainScene.x-0.5*we -ex)/speed, ey+(MainScene.y-0.5*he-ey)/speed);

		if((ex + 0.15*get_scene_width() >= MainScene.x && ex <= MainScene.x) && (ey + 0.15*get_scene_height() >= MainScene.y && ey <= MainScene.y)) {
			MainScene.collide = true;			
		}	
	}

	public void cleanup() {
		
	}
}
