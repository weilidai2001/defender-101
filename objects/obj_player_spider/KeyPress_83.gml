/// @description Lay web
if (cooldown <= 0) {
    instance_create_layer(x, y, "Instances", obj_web);
    cooldown = cooldown_max;
}
