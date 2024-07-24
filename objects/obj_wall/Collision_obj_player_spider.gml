/// @description Wall blocks spider
if (instance_exists(obj_player_spider)) {
    obj_player_spider.x = obj_player_spider.xprevious; // Reset player's x position to previous frame
    obj_player_spider.y = obj_player_spider.yprevious; // Reset player's y position to previous frame
}