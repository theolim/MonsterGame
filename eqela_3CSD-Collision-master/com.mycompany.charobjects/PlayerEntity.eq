/*
 * PlayerEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class PlayerEntity: SEEntity
{
    SESprite goodfish;
    int w;
    int h;
    int wp;
    int hp;
    
    public void initialize (SEResourceCache rsc) {
        base.initialize(rsc);
        w = get_scene_width();
        h = get_scene_height();
        
        rsc.prepare_image("image1","goodfish",0.1*w, 0.1*h);
        goodfish = add_sprite_for_image(SEImage.for_resource("image1"));
        wp = goodfish.get_width();
        hp = goodfish.get_height();
        goodfish.move(0.5*w-0.5*wp, 0.5*h-0.5*hp);
        
    }

    public void tick (TimeVal now, double delta) {
        base.tick(now, delta);
        goodfish.move(MainScene.x-0.5*wp, MainScene.y-0.5*hp);
    }
}