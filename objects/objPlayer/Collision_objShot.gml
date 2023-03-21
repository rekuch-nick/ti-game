if(point_distance(x, y, other.x, other.y) > 30){ return; }


effect_create_above(ef_explosion, x, y, 1.5, c_orange);

hurtPlayer(other.pow, "");
instance_destroy(other);
